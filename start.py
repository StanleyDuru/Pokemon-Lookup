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
    while(choice.lower() == "pokemon" or choice.lower() == "stat"):
        
    if choice == "Pokemon":
        Pokemon = input("Type in the name of a Pokemon: ")
        return Pokemon
    elif choice == "stat":
        stat = input("Choose from the following base stats : attack, stamina, or defense: ")
        return stat
    else:
        print("Response not valid")
        choice

input = getInput()















#print(response.status_code)
#print(response.json())


 