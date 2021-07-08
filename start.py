import requests, os
import json
import pandas as pd
import sqlalchemy as db
from sqlalchemy import create_engine
from sqlalchemy import select

url = "https://pokemon-go1.p.rapidapi.com/pokemon_stats.json"
headers = {
    'x-rapidapi-key': "cdcc19f7bemshcaafa6b12f20c45p1ec5eajsn982786737a25",
    'x-rapidapi-host': "pokemon-go1.p.rapidapi.com"
    }
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
def getInput():
    choice = input("Select to input:\n\t 1. Pokemon\n\t 2.Stat\n\t type '0' to exit\n")
    while int(choice) != 0:
        choice = input("Select to input stat or Pokemon: ")
    while not(choice.lower() == "pokemon" or choice.lower() == "stat"):
        print("\n***Invalid Input. Please try again!***\n")
        choice = input("Select to input stat or Pokemon: ")
        
    while choice.lower() == "pokemon" or choice.lower() == "stat":
        if choice.lower() == "pokemon":
            Pokemon = input("\nType in the name of a Pokemon: ")
            return Pokemon
        elif choice.lower() == "stat":
            print("\nChoose from the following base stats:\n 1. Attack \n 2. Stamina \n 3. Defense\n")
            stat = input()
            return stat


def pokemon(input):
   # print(select(df.Pokemon))
    db= pymysql.connect("localhost","testuser","admin","TESTDB")
    cursor =db.cursor()
    cursor.execute("SELECT name, base_stamina, base_defense, base_attack FROM Pokemon_stats WHERE name=%s", (input,))
    data = cursor.fetchall()
    if data:
        print("Pokemon exists")
    else:
        print("Pokemon does not exist")
        
    
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

def fetch_data(engine,table_name, input):
    connection = engine.connect()
    metadata = db.MetaData()
    c = db.Table(table_name, metadata, autoload=True, autoload_with=engine)
    query = db.select([c]).where(db.and_(c.columns.Name == input))
    ResultProxy = connection.execute(query)
    ResultSet = ResultProxy.fetchall()
    return ResultSet
    
    
database_name = 'Pokemon'
table_name = 'Pokemon_stats'

input = getInput()
rep = get_json(url,headers)
info = create_lis(rep)
df = dataframe(info)
pd.set_option("display.max_rows", None, "display.max_columns", None)



data = makeSqlTable(df, database_name, table_name)
res = fetch_data(data,table_name, input)

print(res)
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


 