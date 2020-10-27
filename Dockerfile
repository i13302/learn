FROM jupyter/base-notebook

USER root
RUN apt-get update -y && apt-get install -y --no-install-recommends build-essential graphviz

USER jovyan
RUN conda install python-graphviz && \
    conda install scikit-learn

CMD ["start-notebook.sh","--NotebookApp.token=''","--NotebookApp.password=''"]
