
echo ">>> Init "
mkdir -p /home/ubuntu/kafka/data
mkdir -p /home/ubuntu/kafka/logs
sudo chmod 777 -R /home/ubuntu/kafka

echo ">>> Run ZK server"
docker run -d --name zookeeper --publish 2181:2181 zookeeper:3.4

echo ">>> Run Kafka server $1"
docker run -d --name kafka --hostname localhost --publish 9092:9092 --publish 7203:7203 --volume /home/ubuntu/kafka/data:/data --volume /home/ubuntu/kafka/logs:/logs --env KAFKA_ADVERTISED_HOST_NAME=$1 --env ZOOKEEPER_IP=172.17.0.2 ches/kafka
