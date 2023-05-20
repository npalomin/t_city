# Script setup

1.  Get geojson geometry describing study area administrative boundary. See `overpass-turbo-query-boundary.txt` for query example to download data from <https://overpass-turbo.eu/>
2.  Save geojson into `input` folder. E.g. `demo-queretaro.geojson`
3.  In file `wp-query-from-geom-demo.Rmd` line 53 update `myfile` variable definition with the name of the file describing study area boundaries.
4.  In file `wp-query-from-geom-demo.Rmd` line 57 update `studyarea` variable definition with the name of the study area.
5.  Run script
6.  Outputs are created in folder with the name defined in `studyarea` variable