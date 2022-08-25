FROM rappdw/docker-java-python
WORKDIR /usr/src/app

RUN pip install --upgrade pip

RUN pip install "apache-flink>=1.13.0,<1.14"
COPY . /usr/src/app
RUN pip install -r requirements.txt

CMD ["python", "main.py"]