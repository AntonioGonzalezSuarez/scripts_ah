kill -9 $(ps -ef | grep 'ah10/elasticsearch\|ah10/kibana' | awk {'print $2'})
