# ansible role - kafka docker stack (zookeeper / kafka / kafka-ui)

3 node cluster example
---------------------------


#### hosts.yml - inventory example
```
---

kafka:
  hosts:
    
    host1.example:
      zookeeper_server_id: 1
      kafka_broker_id: 1
      kafka_ui: true

    host2.example:
      zookeeper_server_id: 2
      kafka_broker_id: 2

    host3.example:
      zookeeper_server_id: 3
      kafka_broker_id: 3
```

#### kafka.yml - playbook example
```
---

- name: Deploy kafka cluster

  hosts: kafka

  gather_facts: false

  roles:
    - kafka

  vars:

    ansible_user: example_user

    docker_user: example_user

    kafka_docker_stack_directory: "/home/example_user/docker_stacks/kafka_docker_stack"

    kafka_network_subnet: "172.17.0.0/24"
    kafka_network_gateway: "172.17.0.1"

    zookeeper_client_port: 2181

    kafka_external_port: 9092

    kafka_ui_port: 8086
    kafka_cluster_name: "example_kafka_cluster"
```