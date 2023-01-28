export ES_JAVA_OPTS="$ES_JAVA_OPTS -Djava.io.tmpdir=/home/alumnos/ah10/tmp"
nohup $HOME/elasticsearch-7.16.1/bin/elasticsearch > $HOME/logs/es.log 2>&1 & nohup $HOME/kibana-7.16.2-linux-x86_64/bin/kibana > $HOME/logs/kibana.log 2>&1 & $HOME/second-node/elasticsearch-7.16.1/bin/elasticsearch > $HOME/logs/es_2.log 2>&1 &
