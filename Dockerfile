FROM ubuntu:21.10
ENV JAVA_HOME=/u01/middleware/jdk-11
ENV PATH=${PATH}:${JAVA_HOME}/bin
RUN mkdir -p /u01/middleware
RUN mkdir -p /u01/data

WORKDIR /u01/middleware
ADD https://download.java.net/openjdk/jdk11/ri/openjdk-11+28_linux-x64_bin.tar.gz .
RUN gunzip openjdk-11+28_linux-x64_bin.tar.gz
RUN tar -xvf openjdk-11+28_linux-x64_bin.tar
RUN rm -rf openjdk-11+28_linux-x64_bin.tar

WORKDIR /u01/data
COPY target/hangout-1.0.jar .
RUN chmod u+x hangout-1.0.jar
EXPOSE 8081
CMD ["java", "-jar", "hangout-1.0.jar"]
