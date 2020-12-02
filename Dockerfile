FROM jupyter/base-notebook

USER root
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends build-essential graphviz mecab libmecab-dev mecab-ipadic mecab-ipadic-utf8 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER jovyan
RUN conda install --yes --freeze-installed nomkl python-graphviz scikit-learn pandas numpy matplotlib seaborn &&  \
    conda clean -afy && \
    find /opt/conda/ -follow -type f -name '*.a' -delete && \
    find /opt/conda/ -follow -type f -name '*.pyc' -delete && \
    find /opt/conda/ -follow -type f -name '*.js.map' -delete
    
COPY requirements.txt .
RUN pip --no-cache-dir install -r requirements.txt && rm requirements.txt

CMD ["start-notebook.sh","--NotebookApp.token=''","--NotebookApp.password=''"]
