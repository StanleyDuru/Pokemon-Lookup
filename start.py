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



#def pokemon(input):
   # print(select(df.Pokemon))
 #   db= pymysql.connect("localhost","testuser","admin","TESTDB")
  #  cursor =db.cursor()
   # cursor.execute("SELECT name, base_stamina, base_defense, base_attack FROM Pokemon_stats WHERE name=%s", (input,))
    #data = cursor.fetchall()
    #if data:
     #   print("Pokemon exists")
    #else:
     #   print("Pokemon does not exist")
        
    
#def stat(input):

    

    
def status(response):
    return response.status_code


def get_json(url, headers):
    response = requests.request("GET", url, headers=headers)
    return response.json()

def create_lis(rep):
    lis = []
    for i in rep:
        if i['form']=='Normal' :
            lis.append(tuple((i['pokemon_name'],i['base_stamina'],i['base_defense'],i['base_attack'])))
    return lis
    
    
def dataframe(lis):
    col_names = ['Name', 'Base_stamina', 'Base_defense', 'Base_attack']
    df = pd.DataFrame(columns = col_names)
    for i in lis:
        df.loc[len(df.index)] = [str(i[0]),int(i[1]),int(i[2]),int(i[3])]
    return df

def makeSqlTable(df, database_name, table_name):
    engine = db.create_engine("mysql://root:codio@localhost/Pokemon?charset=utf8")
    os.system('mysql -u root -pcodio -e "CREATE DATABASE IF NOT EXISTS '+database_name+';"')
    df.to_sql(table_name, con=engine, if_exists='replace', index=False)
    return engine

def fetch_pokemon(engine,table_name, pokemon):
    connection = engine.connect()
    metadata = db.MetaData()
    c = db.Table(table_name, metadata, autoload=True, autoload_with=engine)
    query = db.select([c]).where(db.and_(c.columns.Name == pokemon))
    ResultProxy = connection.execute(query)
    ResultSet = ResultProxy.fetchall()
    return ResultSet


def fetch_stat(engine,table_name, stat, val):
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
    return ResultSet




def main():
    url = "https://pokemon-go1.p.rapidapi.com/pokemon_stats.json"
    headers = {
        'x-rapidapi-key': "cdcc19f7bemshcaafa6b12f20c45p1ec5eajsn982786737a25",
        'x-rapidapi-host': "pokemon-go1.p.rapidapi.com"
    }
    database_name = 'Pokemon'
    table_name = 'Pokemon_stats'
    rep = get_json(url,headers)
    info = create_lis(rep)
    df = dataframe(info)
    data = makeSqlTable(df, database_name, table_name)
    
    choice = input("\nSelect to input:\n\t 1. Pokemon\n\t 2. Stat\n\n\t type '0' to exit\n")
    while choice != '0':
        #choices= ['1','2']
        while not(choice == '1' or choice == '2'):
            print("\n***Invalid Input. Please try again!***\n")
            break
            #choice = input("\nSelect to input:\n\t 1. Pokemon\n\t 2. Stat\n\n\t type '0' to exit\n")
            

        while choice == '1'or choice == '2':
            if choice == '1':
                    pokemon = input("\nType in the name of a Pokemon: ")
                    res = fetch_pokemon(data,table_name, pokemon)
                    print (res)
                    break
            if choice == '2':
                    print("\nChoose from the following base stats:\n 1. Stamina \n 2. Defense \n 3. Attack\n")
                    stat = input()
                    print("\nInput a value for the stat selected\n")
                    val = input()
                    res = fetch_stat(data,table_name, stat, val)
                    print(res)
                    break
        
        choice = input("\nSelect to input:\n\t 1. Pokemon\n\t 2. Stat\n\t type '0' to exit\n")
        
    while choice == '0':
        print("\n Thank You for your time, See you later!\n")
        break

    
if __name__ == "__main__":
    main()

#s = select(users)
#conn = data.connect()
#result = conn.execute(s)










































# for pokemon:
#   table :requsted pokemon ->pokemon: stats
#   
# for stats(example "Attack >5"):
#   table:requested "Attack >5" -> pokemons:stats (listed in table)
#print(response.status_code)
#print(response.json())


 