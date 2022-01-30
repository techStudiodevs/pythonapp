FROM arm64v8/python:2-alpine3.11

RUN pip3 install --upgrade pip

WORKDIR /usr/src/app

COPY requirements.txt ./requirements.txt
COPY  app ./app
COPY run.py ./run.py

RUN pip3 install -r requirements.txt

EXPOSE 5500
CMD [ "python3", "./run.py" ]
