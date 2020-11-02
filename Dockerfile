FROM terradue/c7-repo2cli:latest

RUN repo2cli -r https://github.com/terradue-ogc-tb16/vegetation-index-ref.git

ENV PREFIX /opt/anaconda/envs/env_vegetation_index_ref

ENV PATH /opt/anaconda/envs/env_vegetation_index_ref/bin:$PATH
