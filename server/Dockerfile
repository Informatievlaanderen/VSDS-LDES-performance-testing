FROM ubuntu:latest
RUN  useradd -ms /bin/bash jmeter
RUN apt-get update && apt-get install -y curl
RUN curl https://dlcdn.apache.org//jmeter/binaries/apache-jmeter-5.6.2.tgz --output apache-jmeter-5.6.2.tgz && tar -xf apache-jmeter-5.6.2.tgz && rm apache-jmeter-5.6.2.tgz && chown jmeter -R /apache-jmeter-5.6.2 && ln -s apache-jmeter-5.6.2 apache-jmeter
RUN apt-get install -y openjdk-19-jre
RUN curl https://dlcdn.apache.org/jena/binaries/apache-jena-4.9.0.tar.gz --output  apache-jena-4.9.0.tar.gz && tar -xf apache-jena-4.9.0.tar.gz && rm apache-jena-4.9.0.tar.gz && chown jmeter -R apache-jena-4.9.0 && ln -s apache-jena-4.9.0 apache-jena
RUN rm apache-jmeter/lib/mongo-java-driver-2*
RUN curl https://repo1.maven.org/maven2/org/mongodb/mongo-java-driver/3.12.14/mongo-java-driver-3.12.14.jar --output apache-jmeter/lib/mongo-java-driver-3.12.14.jar
USER jmeter
WORKDIR /home/jmeter
ENTRYPOINT ["/apache-jmeter/bin/jmeter"]
