# notebook-analyze
당장 데이터 분석 환경을 설정해서 연습해 볼 수 있는 docker container

## 무엇이 설치되어 있나요?
- pandas
- numpy
- scikit-learn
- excel (utils)
- spark @deprecated
- tensorflow

## Installation
```shell
docker run -p 9999:8888 -v `pwd`/data:/app/data -v `pwd`/notebook:/app/notebook kangthink/notebook:latest
```

(notbook Tips): https://www.dataquest.io/blog/jupyter-notebook-tips-tricks-shortcuts/
