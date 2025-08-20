FROM python:3.11

RUN apt-get update && apt-get install -y \
bash \
wget \
curl \
openjdk-17-jdk \
make \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH         

WORKDIR /opt/spark-apps