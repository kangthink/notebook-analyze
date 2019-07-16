FROM python:3.6.8
RUN pip install pandas matplotlib jupyter RISE openpyxl networkx tensorflow scikit-learn sklearn
RUN pip install tensorflow==2.0.0-alpha0
RUN jupyter-nbextension install rise --py --sys-prefix
RUN jupyter nbextension enable rise --py --sys-prefix

RUN  pip install nltk
RUN python -c "import nltk;nltk.download('stopwords')"
RUN mkdir /app
WORKDIR /app
RUN mkdir data && mkdir notebook
EXPOSE 8888
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root"]
