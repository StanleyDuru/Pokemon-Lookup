from start import status, fetch_pokemon, makeSqlTable, get_json,create_lis, dataframe, fetch_stat,main
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import requests, os
import pandas as pd
import sqlalchemy as db
from sqlalchemy import create_engine


database_name = 'Pokemon'
table_name = 'Pokemon_stats'
url = "https://pokemon-go1.p.rapidapi.com/pokemon_stats.json"
headers = {
        'x-rapidapi-key': "cdcc19f7bemshcaafa6b12f20c45p1ec5eajsn982786737a25",
        'x-rapidapi-host': "pokemon-go1.p.rapidapi.com"
    }
rep = get_json(url,headers)
#print(status())
info = create_lis(rep)
df = dataframe(info)
data = makeSqlTable(df, database_name, table_name)
pokemon = 'Pikachu'
pokemon2 = 'Torchic'
res = fetch_pokemon(data,table_name, pokemon)
res2 = fetch_pokemon(data,table_name,pokemon2)
name ='test6'

#print(r['Base_attack'])
def fetch_history(engine,username):
    try:
        col_names = ['Name', 'Base_stamina', 'Base_defense', 'Base_attack']
        connection = engine.connect()
        metadata = db.MetaData()
        c = db.Table(username, metadata, autoload=True, autoload_with=engine)
        query = db.select([c])
        ResultProxy = connection.execute(query)
        ResultSet = ResultProxy.fetchall()
        nf = pd.DataFrame(ResultSet, columns=col_names)
        return nf
    except:
        return[]
    
def make_userhistory(df,engine,username):
    try:
        nf = fetch_history(engine,username)
        result = nf.append(df,ignore_index=True)
        #print(result)
        result.to_sql(username, con=engine, if_exists='replace', index=False)
    except:
        df.to_sql(username, con=engine, if_exists='replace', index=False)
    
def show_visuals(df,save_name):
    attack =[]
    stamina = []
    defense = []
    names = []

    for i in df['Base_stamina']:
        stamina.append(i)
    for i in df['Base_defense']:
        defense.append(i)
    for i in df['Base_attack']:
        attack.append(i)
    for i in df['Name']:
        names.append(i)

    plot_data = pd.DataFrame({
        "Stamina":stamina,
        "Defense":defense,
        "Attack":attack},index=names )
    plot_data.plot(kind='bar')
    plt.xticks(rotation=360)
    plt.title("Visual to compare stats")
    plt.xlabel('Pokémon')
    plt.ylabel('Stat Amount')
    plt.savefig("{}.jpg".format(save_name))
    #plt.show()



#make_userhistory(res,data,name)
print(fetch_history(data,name))
#make_userhistory(res2,data,name)