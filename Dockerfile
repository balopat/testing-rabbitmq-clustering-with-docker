FROM alpine

RUN apk update && apk add docker git bash python py-pip curl && pip install docker-compose 
RUN git clone https://github.com/balopat/testing-rabbitmq-clustering-with-docker.git
WORKDIR /testing-rabbitmq-clustering-with-docker 

CMD ./1_build_cluster_base_image.sh && ./2_build_cluster_node_image.sh && ./3_start.sh
