
Kylin dependencies
	- Zookeeper
	- HDFS
	- YARN
	- Hive
	- HBase
	- Spark

Note that on first run, a folder /kylin is create in the hdfs root.
You can create this using the following command

```sh
sudo -u hdfs hdfs dfs -mkdir /kylin
```

Once installation complete, run the `$KYLIN_HOME/bin/check-env.sh` to confirm all dependencies as working well.

To start kylin

```sh
$KYLIN_HOME/bin/kylin.sh start
```

Open a browser to `http://quickstart.cloudera:7070/kylin`

To login to kylin for the first time, use `ADMIN/KYLIN` as credentials
