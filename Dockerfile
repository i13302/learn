FROM jupyter/base-notebook

USER root
RUN apt-get update -y && apt-get install -y --no-install-recommends build-essential graphviz

USER jovyan
RUN pip install graphviz

USER jovyan
