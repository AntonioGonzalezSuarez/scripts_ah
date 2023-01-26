kill -9 $(ps -ef | grep '$USER/elasticsearch\|$USER/kibana' | awk {'print $2'})
