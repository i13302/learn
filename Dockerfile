FROM python:3 as python-base
COPY requirements.txt .
RUN pip install -r requirements.txt

FROM jupyter/base-notebook

USER root
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends build-essential graphviz mecab libmecab-dev mecab-ipadic mecab-ipadic-utf8 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY --from=python-base /root/.cache /root/.cache
COPY --from=python-base requirements.txt .
RUN pip install -r requirements.txt && rm -rf /root/.cache requirements.txt

USER jovyan
RUN conda install --yes --freeze-installed nomkl python-graphviz scikit-learn pandas numpy matplotlib seaborn &&  \
    conda clean -afy && \
    find /opt/conda/ -follow -type f -name '*.a' -delete && \
    find /opt/conda/ -follow -type f -name '*.pyc' -delete && \
    find /opt/conda/ -follow -type f -name '*.js.map' -delete

CMD ["start-notebook.sh","--NotebookApp.token=''","--NotebookApp.password=''"]
