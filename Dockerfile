FROM bitnami/spark:3.5.1

RUN apt-get update && apt-get install -y python3.11

RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 1

WORKDIR /app

COPY . /app

COPY log4j2.properties /opt/bitnami/spark/conf/log4j2.properties
