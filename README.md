## stat
Bits and pieces in statistic and related field

## Running R and RStudio with docker (HTWG Labs)

* Start Docker (e.g. by clicking on the desktop symbole)
* Start powershell and start the container with

```bash
 docker run --rm -v c:/Users/oduerr/r_files:/home/rstudio  -p 8787:8787 -e PASSWORD=egal  rocker/rstudio
```

change file 'oduerr/r_files' for your needs.

* Open http://localhost:8787/ in the browser (use username rstudio and password egal)

For a bit more details see [docker.pdf](docker.pdf)

