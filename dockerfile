FROM arm64v8/python:3.9-alpine3.14

RUN pip install --upgrade pip

WORKDIR /usr/src/app

COPY requirements.txt ./requirements.txt
COPY  app ./app
COPY run.py ./run.py

RUN pip install -r requirements.txt

EXPOSE 5500
CMD [ "python", "./run.py" ]
