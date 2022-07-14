---
output:
  pdf_document: default
  html_document: default
---

# RStudio local host using docker

1. Assuming docker is installed

2. Start docker engine

3. Open terminal

`docker pull npalomin/osm:v1`

`docker run --rm -p 8787:8787 -v $(pwd):/home/rstudio -e PASSWORD=pass npalomin/osm:v1`

OR

`docker pull rocker/geospatial`

`docker run --rm -p 8787:8787 -v $(pwd):/home/rstudio -e PASSWORD=pass rocker/geospatial`

4. Open browser at localhost:8787

5. Input credentials

user: `rstudio`

password: `pass`

- `Ok` to messages (depends on where `docker` is run): 

_“Docker” would like to access files in your Desktop folder._

6. In bottom right panel `Upload` or navigate to .Rmd file. Click to open it

7. In main panel `Run` dropdown select `Run All Chunks Below`

8. In bottom left panel Console tab might show:

_Enter one or more numbers, or an empty line to skip updates: _

9. Press enter to continue

10. When finished In bottom right panel tab Files, check box of `csv` folder, go to `More` dropdown select `Export...` or navigate to location of .Rmd file

