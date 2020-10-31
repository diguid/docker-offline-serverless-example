FROM nikolaik/python-nodejs:latest

RUN npm install -g serverless
RUN serverless --version

COPY ./package.json /app/
WORKDIR /app/

RUN npm install

COPY serverless.yml /app/serverless.yml
RUN sls requirements install

COPY offline_serverless/ /app/offline_serverless/
COPY requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

EXPOSE 3000
