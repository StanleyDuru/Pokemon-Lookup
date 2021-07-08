import unittest
import pandas
from start import status, fetch_pokemon, makeSqlTable, get_json,create_lis, dataframe, fetch_stat


class tests(unittest.TestCase):
        def test_status(self):
            url = "https://pokemon-go1.p.rapidapi.com/pokemon_stats.json"
            headers = {
            'x-rapidapi-key': "cdcc19f7bemshcaafa6b12f20c45p1ec5eajsn982786737a25",
            'x-rapidapi-host': "pokemon-go1.p.rapidapi.com"
        
            }
        
        
            self.assertEqual(status(), 200 )

        def test_fetch_pokemon(self):
            url = "https://pokemon-go1.p.rapidapi.com/pokemon_stats.json"
            headers = {
            'x-rapidapi-key': "cdcc19f7bemshcaafa6b12f20c45p1ec5eajsn982786737a25",
            'x-rapidapi-host': "pokemon-go1.p.rapidapi.com"
            }
            pokemon = input("Type in the name of a Pokemon: ")
            database_name = 'Pokemon'
            table_name = 'Pokemon_stats'
            rep = get_json(url,headers)
            info = create_lis(rep)
            df = dataframe(info)
            data = makeSqlTable(df, database_name, table_name)
            pokedata = fetch_pokemon(data,table_name, pokemon)
            self.assertFalse(pokedata.empty == 'False' )
            
        def test_fetch_stat(self):
            url = "https://pokemon-go1.p.rapidapi.com/pokemon_stats.json"
            headers = {
            'x-rapidapi-key': "cdcc19f7bemshcaafa6b12f20c45p1ec5eajsn982786737a25",
            'x-rapidapi-host': "pokemon-go1.p.rapidapi.com"
            }
            stat = input("Choose from the following base stats:\n\t 1. Stamina \n\t 2. Defense \n\t 3. Attack\n")
            database_name = 'Pokemon'
            table_name = 'Pokemon_stats'
            rep = get_json(url,headers)
            info = create_lis(rep)
            df = dataframe(info)
            data = makeSqlTable(df, database_name, table_name)
            statdata = fetch_stat(data,table_name, stat, value)
            self.assertFalse(stat.empty == 'False' )
       
if __name__ == '__main__':
    unittest.main()