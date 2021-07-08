from start import status, fetch_pokemon, makeSqlTable, get_json,create_lis, dataframe, fetch_stat,main
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import requests, os
import pandas as pd
import sqlalchemy
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

r = fetch_stat(data,table_name,'2',100)

#print(r['Base_attack'])
attack =[]
stamina = []
defense = []
names = []

for i in r['Base_stamina']:
    stamina.append(i)
for i in r['Base_defense']:
    defense.append(i)
for i in r['Base_attack']:
    attack.append(i)
for i in r['Name']:
    names.append(i)
    
plot_data = pd.DataFrame({
    "Stamina":stamina,
    "Defense":defense,
    "Attack":attack},index=names )


plot_data.plot(kind='bar')
plt.show()