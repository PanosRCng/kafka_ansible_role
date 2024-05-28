# kafka docker stack (zookeeper / kafka / kafka-ui)


## kafka cluster node

* start
    ```
    make cluster_node_start
    ```

* stop
    ```
    make cluster_node_stop
    ```



## single host kafka cluster

* start
    ```
    make single_host_cluster_start
    ```

* stop
    ```
    make single_host_cluster_stop
    ```



## single host single node kafka

* start
    ```
    make single_host_node_start
    ```

* stop
    ```
    make single_host_node_start
    ```



## configuration
```
edit env in envs/ 
```


## (*) reset_stack.sh
    (!) data loss
    (!) removes all generated data files 

