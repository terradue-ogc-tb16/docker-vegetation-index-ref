# docker-vegetation-index-ref 

Dockerfile for the https://github.com/terradue-ogc-tb16/vegetation-index-ref repository

## Using this container

### Getting the help context

```console
docker run --rm -it terradue/nb-vegetation-index-ref:latest vegetation-index-ref --help
```

Will return:

```
usage: vegetation-index-ref [-h] [--kernel KERNEL] [--output NB_TARGET] [--docker DOCKER] [--cwl] [--params] [--input_reference INPUT_REFERENCE] [--aoi AOI]

Vegetation index by reference Vegetation index processor by reference

optional arguments:
  -h, --help            show this help message and exit
  --kernel KERNEL       kernel for notebook execution
  --output NB_TARGET    output notebook
  --docker DOCKER       Sets the docker image for the CWL DockerRequirement
  --cwl                 Prints the CWL script and exits
  --params              Prints the default parameters and exits
  --input_reference INPUT_REFERENCE
                        STAC item for vegetation index
  --aoi AOI             Area of interest in WKT
```
  
### Getting the Common Workflow Language (CWL) script

```console
docker run --rm -it terradue/nb-vegetation-index-ref:latest vegetation-index-ref --cwl --docker terradue/nb-vegetation-index-ref:latest
```
### Getting the Common Workflow Language (CWL) default parameters 

```console
docker run --rm -it terradue/nb-vegetation-index-ref:latest vegetation-index-ref --params
```

### Executing the CWL script

Get the CWL script:

```console
docker run --rm -it terradue/nb-vegetation-index-ref:latest vegetation-index-ref --cwl --docker terradue/nb-vegetation-index-ref:latest > vegetation-index-ref.cwl
```

Get the parameters:

```console
docker run --rm -it terradue/nb-vegetation-index-ref:latest vegetation-index-ref --params > vegetation-index-ref.yml
```

Execute the CWL script with `cwltool`:

```console
cwltool vegetation-index-ref.cwl#vegetation-index-ref vegetation-index-ref.yml
```
