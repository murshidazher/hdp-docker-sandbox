# [hdp-docker-sandbox](https://github.com/murshidazher/hdp-docker-sandbox)

> Hortonworks Data Platform 2.6.5 & 3.0.1 sandbox through `docker` 🔥🔥🔥

- To launch an automated hdp2.6.5 workflow in aws ec2 instance, look into this [repo](https://github.com/murshidazher/terraform-hadoop).

## Table of Contents

- [hdp-docker-sandbox](#hdp-docker-sandbox)
  - [Table of Contents](#table-of-contents)
  - [Installing / Getting started](#installing--getting-started)
    - [Installing Docker](#installing-docker)
    - [Install HDP 2.6.5](#install-hdp-265)
    - [Install HDP 3.0.1](#install-hdp-301)
  - [Credentials](#credentials)
  - [Restarting HDP](#restarting-hdp)
  - [Pausing and Resume Docker Container](#pausing-and-resume-docker-container)
  - [Port Forwards](#port-forwards)
  - [References](#references)
  - [License](#license)

## Installing / Getting started

Clone the repository

```sh
> git clone https://github.com/murshidazher/hdp-docker-sandbox.git
> cd hdp-docker-sandbox 
```

### Installing Docker

Install docker to the instance,

```sh
> cd hdp-docker-sandbox 
> sudo bash install_docker.sh
```

### Install HDP 2.6.5

> :bulb: Recommended

Run the docker deployment script,

```sh
> docker info
> cd hdp-docker-sandbox/HDP_2.6.5
> sudo bash docker-deploy-hdp265.sh
```

### Install HDP 3.0.1

> ⚠️ Hive View is not present in HDP `3.0.1` or Ambari `2.7`.

Run the docker deployment script,

```sh
> docker info
> cd hdp-docker-sandbox/HDP_3.0.1
> sudo bash docker-deploy-hdp30.sh
```

## Credentials

- The default Ambari credentials are `raj_ops`:`raj_ops` and `maria_dev`: `maria_dev` . The default `AmbariShell` login credential is `root`:`hadoop`.

## Restarting HDP

To stop the running docker instance and restart the services,

```sh
> cd hdp-docker-sandbox
> sudo bash restart_docker.sh
```

## Pausing and Resume Docker Container

To pause the container before stopping an ec2 instance,

```sh
> cd hdp-docker-sandbox
> sudo bash pause_docker.sh
```

To resume the container after a restart,

```sh
> cd hdp-docker-sandbox
> sudo bash resume_docker.sh
```

## [Port Forwards](https://www.cloudera.com/tutorials/hortonworks-sandbox-guide/3.html)

| Default | Forwarded | Description                    |
|---------|-----------|--------------------------------|
| 2122    | 22        | HostSSH                        |
| 2200    | 22        | HostSSH2                       |
| 2222    | 2222      | DockerSSH                      |
| 7777    | 7777      | Streaming Analytics Manager    |
| 8585    | 8585      | Streams Messaging Manager      |
| 7788    | 7788      | Schema Registry                |
| 8000    | 8000      | Storm Logviewer                |
| 9995    | 9995      | Zeppelin1                      |
| 9996    | 9996      | Zeppelin2                      |
| 9088    | 9088      | NiFi Protocol                  |
| 61080   | 61080     | NiFi Registry                  |
| 8886    | 8886      | AmbariInfra                    |
| 61888   | 61888     | Log Search                     |
| 10500   | 10500     | HS2v2                          |
| 4040    | 4040      | Spark                          |
| 4200    | 4200      | AmbariShell                    |
| 8983    | 8983      | SolrAdmin                      |
| 42080   | 80        | Apache                         |
| 42111   | 42111     | nfs                            |
| 8020    | 8020      | HDFS                           |
| 8040    | 8040      | nodemanager                    |
| 8032    | 8032      | RM                             |
| 8080    | 8080      | ambari                         |
| 8443    | 8443      | Knox                           |
| 8744    | 8744      | StormUI                        |
| 1080    | 1080      | Splash Page                    |
| 8993    | 8993      | Solr                           |
| 10000   | 10000     | HS2                            |
| 10001   | 10001     | HS2Http                        |
| 10002   | 10002     | HiveJDBCJar                    |
| 30800   | 30800     | DAS                            |
| 11000   | 11000     | Oozie                          |
| 15000   | 15000     | Falcon                         |
| 19888   | 19888     | JobHistory                     |
| 50070   | 50070     | WebHdfs                        |
| 50075   | 50075     | Datanode                       |
| 50095   | 50095     | Accumulo                       |
| 50111   | 50111     | WebHcat                        |
| 16010   | 16010     | HBaseMaster                    |
| 16030   | 16030     | HBaseRegion                    |
| 60080   | 60080     | WebHBase                       |
| 6080    | 6080      | XASecure                       |
| 18080   | 18080     | SparkHistoryServer             |
| 8042    | 8042      | NodeManager                    |
| 21000   | 21000     | Atlas                          |
| 8889    | 8889      | Jupyter                        |
| 8088    | 8088      | YARN                           |
| 2181    | 2181      | Zookeeper                      |
| 9090    | 9090      | Nifi                           |
| 4557    | 4557      | NiFi DistributedMapCacheServer |
| 6627    | 6627      | Storm Nimbus Thrift            |
| 9000    | 9000      | HST                            |
| 6667    | 6667      | Kafka                          |
| 9091    | 9091      | NiFi UI HTTPS                  |
| 2202    | 2202      | Sandbox SSH 2                  |
| 8188    | 8188      | YarnATS                        |
| 8198    | 8198      | YarnATSR                       |
| 9089    | 9089      | Druid1                         |
| 8081    | 8081      | Druid2                         |
| 2201    | 2201      | SSH HDP CDA                    |

## References

- Official hortonworks [docker deployment docs](https://hortonworks.com/tutorial/sandbox-deployment-and-install-guide/section/3/).
- Original [AWS deployment article by ruslanmv](https://ruslanmv.com/blog/Cloudera-HDP-Sanbox-on-AWS).
- Original HDP2.6.5 deployment docker script can be found [here](https://archive.cloudera.com/hwx-sandbox/hdp/hdp-2.6.5/HDP_2.6.5_deploy-scripts_180624d542a25.zip)

## License

[MIT](./LICENSE) © Murshid Azher.
