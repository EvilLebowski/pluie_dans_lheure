import cfgrib
import numpy as np
import sys

FICHIER_GRIB = sys.argv[1]
lat_cible = 48.883331
lon_cible = 2.26667

try:
    ds = cfgrib.open_dataset(FICHIER_GRIB)
except Exception:
    print("no_data")
    sys.exit(0)

# Recherche de la variable de précipitation
var_precip = None
for var in ds.variables:
    if var in ['tp', 'pr', 'prate', 'precipitation_amount_acc']:
        var_precip = var
        break

if var_precip is None:
    print("no_data")
    sys.exit(0)

champ = ds[var_precip]
latitudes = ds.latitude.values
longitudes = ds.longitude.values

ilat = np.abs(latitudes - lat_cible).argmin()
ilon = np.abs(longitudes - lon_cible).argmin()

pluie_detectee = False
debut_pluie = -1

for i in range(4):  # 4 x 15min = 1h
    valeur = champ.values[i, ilat, ilon]
    if valeur > 0.1:
        pluie_detectee = True
        debut_pluie = i * 15
        break

if champ.values[0, ilat, ilon] > 0.1:
    print("already_raining")
elif pluie_detectee:
    print(f"rain_in {debut_pluie}")
else:
    print("no_rain")
