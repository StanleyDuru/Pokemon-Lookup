import requests

url = "https://pokemon-go1.p.rapidapi.com/pokemon_stats.json"
headers = {
    'x-rapidapi-key': "cdcc19f7bemshcaafa6b12f20c45p1ec5eajsn982786737a25",
    'x-rapidapi-host': "pokemon-go1.p.rapidapi.com"
    }
response = requests.request("GET", url, headers=headers)



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
    

    
def stat(input):
    
def status(response):
    return response.status_code


def get_json(url, headers):
    response = requests.get(url, headers)
    return response.json()
        
        
input = getInput()

# for pokemon:
#   table :requsted pokemon ->pokemon: stats
# for stats("Attack >5"):
#   table:requested "Attack >5" -> pokemons:stats (listed in table)














#print(response.status_code)
#print(response.json())


 