# [hdp-docker-sandbox](https://github.com/murshidazher/hdp-docker-sandbox)

> Hortonworks Data Platform 2.6.5 sandbox through `docker` 🔥🔥🔥

- To launch an automated hdp2.6.5 workflow in aws ec2 instance, look into this [repo](https://github.com/murshidazher/terraform-hadoop).

## Table of Contents

- [hdp-docker-sandbox](#hdp-docker-sandbox)
  - [Table of Contents](#table-of-contents)
  - [📚 Installing / Getting started](#-installing--getting-started)
    - [Installing Docker](#installing-docker)
    - [Install HDP 2.6.5](#install-hdp-265)
  - [Credentials](#credentials)
  - [Restarting HDP](#restarting-hdp)
  - [Port Forwards](#port-forwards)
  - [References](#references)
  - [License](#license)

## 📚 Installing / Getting started

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

Run the docker deployment script,

```sh
> docker info
> cd hdp-docker-sandbox/HDP_2.6.5
> sudo bash docker-deploy-hdp265.sh
```

## Credentials

- The default Ambari credentials are `raj_ops`:`raj_ops` and `maria_dev`: `maria_dev` . The default `AmbariShell` login credential is `root`:`hadoop`.

## Restarting HDP

To stop the running docker instance and restart the services,

```sh
> cd hdp-docker-sandbox
> sudo bash restart_docker.sh
```

## [Port Forwards](https://www.cloudera.com/tutorials/hortonworks-sandbox-guide/3.html)

| Default | Forwarded | Description                 |
|---------|-----------|-----------------------------|
| 2122    | 22        | HostSSH                     |
| 2200    | 22        | HostSSH2                    |
| 2222    | 2222      | DockerSSH                   |
| 7777    | 7777      | Streaming Analytics Manager |

## References

- Official hortonworks docker deployment docs could be found [here](https://hortonworks.com/tutorial/sandbox-deployment-and-install-guide/section/3/) by hortonworks.
- Original AWS deployment article can be found [here](https://ruslanmv.com/blog/Cloudera-HDP-Sanbox-on-AWS) by ruslanmv.
- Original HDP2.6.5 deployment docker script can be found [here](https://archive.cloudera.com/hwx-sandbox/hdp/hdp-2.6.5/HDP_2.6.5_deploy-scripts_180624d542a25.zip)

## License

[MIT](./LICENSE) © Murshid Azher.
