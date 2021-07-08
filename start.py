import requests, os
import json
import pandas as pd
import sqlalchemy as db
from sqlalchemy import create_engine
from sqlalchemy import select




#response = requests.request("GET", url, headers=headers)
#have an input statement somewhere
#   2 input statements:
#       input for if you want pokemon:
#           gets json for pokemon
#           create a database and store it in?

#       input for if you want stats: (stat_name, amount):
#           find stat_name:
#               find amounts >= amount
#           gets json for each pokemon with corresponding stats
#           create database and store it

#gets the status code of the json()    
def status(url, headers):
    response = requests.request("GET", url, headers=headers)
    code = response.status_code
    return code

#gets the data from the json()
def get_json(url, headers):
    response = requests.request("GET", url, headers=headers)
    return response.json()
#creates a list of only Pokemon with only the form: 'Normal'
def create_lis(rep):
    lis = []
    for i in rep:
        if i['form']=='Normal' :
            lis.append(tuple((i['pokemon_name'],i['base_stamina'],i['base_defense'],i['base_attack'])))
    return lis
    
#Creates the dataframe of all the Pokemon    
def dataframe(lis):
    col_names = ['Name', 'Base_stamina', 'Base_defense', 'Base_attack']
    df = pd.DataFrame(columns = col_names)
    for i in lis:
        df.loc[len(df.index)] = [str(i[0]),int(i[1]),int(i[2]),int(i[3])]
    return df
#Creates a database table of all the Pokemon
def makeSqlTable(df, database_name, table_name):
    engine = db.create_engine("mysql://root:codio@localhost/Pokemon?charset=utf8")
    os.system('mysql -u root -pcodio -e "CREATE DATABASE IF NOT EXISTS '+database_name+';"')
    df.to_sql(table_name, con=engine, if_exists='replace', index=False)
    return engine
#Gets the data for the Pokemon the user entered
def fetch_pokemon(engine,table_name, pokemon):
    col_names = ['Name', 'Base_stamina', 'Base_defense', 'Base_attack']
    connection = engine.connect()
    metadata = db.MetaData()
    c = db.Table(table_name, metadata, autoload=True, autoload_with=engine)
    query = db.select([c]).where(db.and_(c.columns.Name == pokemon))
    ResultProxy = connection.execute(query)
    ResultSet = ResultProxy.fetchall()
    df = pd.DataFrame(ResultSet, columns = col_names)
    if df.empty:
        error = "\n\tNo Results Found\n"
        return error
    else:
        print("\nResults for {}:".format(pokemon))
        return df

#Gets the data for the stat and value the user input
def fetch_stat(engine,table_name, stat, val):
    col_names = ['Name', 'Base_stamina', 'Base_defense', 'Base_attack']
    connection = engine.connect()
    metadata = db.MetaData()
    c = db.Table(table_name, metadata, autoload=True, autoload_with=engine)
    if stat == '3':
        query = db.select([c]).where(db.and_(c.columns.Base_attack == val))
    elif stat == '1':
        query = db.select([c]).where(db.and_(c.columns.Base_stamina == val))
    elif stat == '2':
        query = db.select([c]).where(db.and_(c.columns.Base_defense == val))
    ResultProxy = connection.execute(query)
    ResultSet = ResultProxy.fetchall()
    df = pd.DataFrame(ResultSet, columns = col_names)
    if ResultSet == []:
        error = "\tNo Results Found"
        return error
    else:
        print("\nPokemon Found:")
        return df




def main():
    url = "https://pokemon-go1.p.rapidapi.com/pokemon_stats.json"

    headers = {
        'x-rapidapi-key': "cdcc19f7bemshcaafa6b12f20c45p1ec5eajsn982786737a25",
        'x-rapidapi-host': "pokemon-go1.p.rapidapi.com"
    }
    database_name = 'Pokemon'
    table_name = 'Pokemon_stats'
    rep = get_json(url,headers)
    status(url, headers) 
    print(status)
    info = create_lis(rep)
    df = dataframe(info)
    data = makeSqlTable(df, database_name, table_name)
 #Prompt for user input   
    Prompt = "\n\t ***Welcome to Pokemon GO Pokemon Finder Project***\n\n\
        You will be prompted to either look for your pokemon\n \
        \tor find pokemon with stats you prefer!\n" 
        
    print(Prompt)
    choice = input("\nSelect to input:\n\t 1. Pokemon\n\t 2. Stat\n\n\t type '0' to exit\n")
    while choice != '0':
        #choices= ['1','2']
        while not(choice == '1' or choice == '2'):
            print("\n***Invalid Input. Please try again!***\n")
            break
            #choice = input("\nSelect to input:\n\t 1. Pokemon\n\n\t 2. Stat\n\n\t type '0' to exit\n")
            

        while choice == '1'or choice == '2':
            if choice == '1':
                    pokemon = input("\nType in the name of a Pokemon: ")
                    res = fetch_pokemon(data,table_name, pokemon)
                    print (res)
                    break
            if choice == '2':
                    print("\nChoose from the following base stats:\n\t 1. Stamina \n\t 2. Defense \n\t 3. Attack\n")
                    stat = input()
                    while not(stat == '1' or stat == '2' or stat == '3'):
                        print('\n***Invalid stat. Try again!***\n')
                        stat= input()
                    print("\nInput a value for the stat selected\n")
                    val = input()
                    res = fetch_stat(data,table_name, stat, val)
                    print(res)
                    break
        
        choice = input("\nSelect to input:\n\t 1. Pokemon\n\t 2. Stat\n\n\t type '0' to exit\n")
        
    while choice == '0':
        print("\n Thank You for your time, See you later!\n")
        break

    
if __name__ == "__main__":
    main()













































# for pokemon:
#   table :requsted pokemon ->pokemon: stats
#   
# for stats(example "Attack >5"):
#   table:requested "Attack >5" -> pokemons:stats (listed in table)
#print(response.status_code)
#print(response.json())


 