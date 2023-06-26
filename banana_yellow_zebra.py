#Importing necessary libraries 
import pandas as pd 
import geopandas as gpd 
import matplotlib.pyplot as plt 
import seaborn as sns 
from shapely.geometry import Point

#Loading csv file 
urban_oasis_data = pd.read_csv('urban_oasis_data.csv') 

#Creating columns for Longitude and Latitude 
urban_oasis_data["Longitude"]= ""
urban_oasis_data["Latitude"]= ""

#Counting the number of entries in urban_oasis_data
num_entries = urban_oasis_data.shape[0]

#Creating a function to get the latitude and longitude of the zipcode 
def get_lat_long(row): 
    from uszipcode import SearchEngine
    search= SearchEngine(simple_zipcode=True)
    zipcode = row.zipcode
    search_result = search.by_zipcode(zipcode)
    row["Latitude"] = search_result.lat
    row["Longitude"] = search_result.lng
    return row

#Iterating through each row and applying the function
for i in range(num_entries):
    urban_oasis_data.iloc[i] = get_lat_long(urban_oasis_data.iloc[i])

#Creating a geopandas dataframe 
geometry = [Point(xy) for xy in zip(urban_oasis_data.Longitude, urban_oasis_data.Latitude)]
crs = {'init': 'epsg:4326'}
urban_oasis_gpd = gpd.GeoDataFrame(urban_oasis_data, crs=crs, geometry=geometry)

#Exporting the geopandas dataframe as a shapefile 
urban_oasis_gpd.to_file("urban_oasis_shapefile.shp")

#Plotting the urban_oasis_gpd
fig,ax = plt.subplots(1, figsize=(30, 20))
sns.scatterplot(x="Longitude", y="Latitude", hue="city", data=urban_oasis_data, legend="brief",ax=ax);
plt.title('Urban Oasis')
plt.savefig("urban_oasis_map.png")