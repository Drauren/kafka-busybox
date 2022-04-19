FROM busybox
ENV KAFKA_VERSION=3.1.0
ENV SCALA_VERSION=2.13

# Download the latest Kafka binary
RUN wget https://dlcdn.apache.org/kafka/$KAFKA_VERSION/kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz \
    && tar -xzf kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz \
    && rm -rf  kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz

RUN ls  kafka_$SCALA_VERSION-$KAFKA_VERSION/bin