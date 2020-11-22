FROM nikolaik/python-nodejs:python3.8-nodejs15-alpine

RUN npm install -g serverless
RUN serverless --version

COPY ./package.json /app/
COPY serverless.yml /app/serverless.yml
COPY offline_serverless/ /app/offline_serverless/
COPY requirements.txt /app/requirements.txt
WORKDIR /app/

RUN npm install
RUN pip install -r requirements.txt
