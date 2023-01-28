kill -9 $(ps -ef | grep 'ah10/elasticsearch\|ah10/kibana\|ah10/second-node/elasticsearch' | awk {'print $2'})
