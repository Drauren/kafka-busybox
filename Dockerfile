FROM openjdk:8-jre-slim
ENV KAFKA_VERSION=3.1.0
ENV SCALA_VERSION=2.13

# Pre-reqs
RUN apt-get update \
    && apt-get install -y wget curl netcat \
# Download the latest Kafka binary
    && wget https://dlcdn.apache.org/kafka/$KAFKA_VERSION/kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz \
    && tar -xzf kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz \
    && rm -rf  kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz

# Add Kafka CLI scripts to PATH
ENV PATH=$PATH:kafka_$SCALA_VERSION-$KAFKA_VERSION/bin

# Switch off root user
USER 1001

ENTRYPOINT [ "tail", "-f", "/dev/null"]