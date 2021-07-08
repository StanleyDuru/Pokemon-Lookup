import requests

url = "https://pokemon-go1.p.rapidapi.com/pokemon_stats.json"

headers = {
    'x-rapidapi-key': "cdcc19f7bemshcaafa6b12f20c45p1ec5eajsn982786737a25",
    'x-rapidapi-host': "pokemon-go1.p.rapidapi.com"
    }

response = requests.request("GET", url, headers=headers)
print(response.status_code)