FROM ubuntu:latest
RUN useradd -ms /bin/bash jmeter
RUN apt-get update && apt-get install -y curl
ARG JMETER_TAG=5.6.3
ARG JENA_TAG=5.2.0
ARG MONGO_JAVA_TAG=3.12.14
RUN curl https://dlcdn.apache.org/jmeter/binaries/apache-jmeter-${JMETER_TAG}.tgz --output apache-jmeter-${JMETER_TAG}.tgz && tar -xf apache-jmeter-${JMETER_TAG}.tgz && rm apache-jmeter-${JMETER_TAG}.tgz && chown jmeter -R /apache-jmeter-${JMETER_TAG} && ln -s apache-jmeter-${JMETER_TAG} apache-jmeter
RUN apt-get install -y openjdk-19-jre
RUN curl https://dlcdn.apache.org/jena/binaries/apache-jena-${JENA_TAG}.tar.gz --output  apache-jena-${JENA_TAG}.tar.gz && tar -xf apache-jena-${JENA_TAG}.tar.gz && rm apache-jena-${JENA_TAG}.tar.gz && chown jmeter -R apache-jena-${JENA_TAG} && ln -s apache-jena-${JENA_TAG} apache-jena
RUN rm apache-jmeter/lib/mongo-java-driver-2*
RUN curl https://repo1.maven.org/maven2/org/mongodb/mongo-java-driver/${MONGO_JAVA_TAG}/mongo-java-driver-${MONGO_JAVA_TAG}.jar --output apache-jmeter/lib/mongo-java-driver-${MONGO_JAVA_TAG}.jar
USER jmeter
WORKDIR /home/jmeter
ENTRYPOINT ["/apache-jmeter/bin/jmeter"]
