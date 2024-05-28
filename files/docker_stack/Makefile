#!/usr/bin/make

SHELL = /bin/sh


.PHONY: cluster_node_start cluster_node_stop single_host_node_start single_host_node_stop single_host_cluster_start single_host_cluster_stop



cluster_node_start:
	docker-compose --env-file=envs/kafka_cluster_node_env -f kafka_cluster_node.yml up -d


cluster_node_stop:
	docker-compose --env-file=envs/kafka_cluster_node_env -f kafka_cluster_node.yml down


single_host_node_start:
	docker-compose --env-file=envs/single_host_single_node_kafka_env -f single_host_single_node_kafka.yml up -d


single_host_node_stop:
	docker-compose --env-file=envs/single_host_single_node_kafka_env -f single_host_single_node_kafka.yml down


single_host_cluster_start:
	docker-compose --env-file=envs/single_host_kafka_cluster_env -f single_host_kafka_cluster.yml up -d


single_host_cluster_stop:
	docker-compose --env-file=envs/single_host_kafka_cluster_env -f single_host_kafka_cluster.yml down


