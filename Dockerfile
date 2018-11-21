From openjdk:8-alpine

RUN apk add --no-cache wget unzip \
    && mkdir /jmeter \
    && cd /jmeter/ \
    && wget https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-4.0.tgz \
    && tar -xzf apache-jmeter-4.0.tgz \ 
	&& rm apache-jmeter-4.0.tgz 

ENV JMETER_HOME /jmeter/apache-jmeter-4.0/

ENV PATH $JMETER_HOME/bin:$PATH
