#!/bin/sh

if [ "`ls -A $INSTALL_HOME/data/dfs/name/`" == "" ]; then
  echo "Formatting namenode ......"
  echo "conf-dir" $HADOOP_CONF_DIR
  $HADOOP_HOME/bin/hdfs --config $HADOOP_CONF_DIR namenode -format $CLUSTER_NAME
fi
$HADOOP_HOME/bin/hadoop --config $HADOOP_CONF_DIR namenode

