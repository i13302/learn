FROM jupyter/base-notebook

USER root
RUN apt-get update -y && apt-get install -y --no-install-recommends build-essential graphviz && apt-get install -y mecab libmecab-dev mecab-ipadic mecab-ipadic-utf8

USER jovyan
RUN conda install python-graphviz && \
    conda install scikit-learn
RUN conda install pandas
RUN conda install numpy
RUN conda install matplotlib
RUN conda install seaborn
RUN pip install tensorflow

#RUN apt-get install -y mecab libmecab-dev mecab-ipadic mecab-ipadic-utf8
RUN pip install mecab-python3==0.996.5

CMD ["start-notebook.sh","--NotebookApp.token=''","--NotebookApp.password=''"]
