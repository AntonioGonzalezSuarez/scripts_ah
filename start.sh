export ES_JAVA_OPTS="$ES_JAVA_OPTS -Djava.io.tmpdir=/home/alumnos/ah10/tmp"
nohup /home/alumnos//ah10/elasticsearch-7.16.1/bin/elasticsearch > /home/alumnos/ah10/logs/es.log 2>&1 & nohup /home/alumnos//ah10/kibana-7.16.2-linux-x86_64/bin/kibana > /dev/null 2>&1
