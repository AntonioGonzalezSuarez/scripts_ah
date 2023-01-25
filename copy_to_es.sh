function update_es()
{
curl -XPOST localhost:9210/_reindex?pretty -H 'Content-Type: application/json' -d'
{
 "source": {
 "remote": {
 "host": "http://$1:9200",
 "username": "consultas",
 "password": "icai4ever"
 },
 "index": "index-data",
    "query": {
      "range":{
         "@timestamp":{
            "gte":"now-7d",
	    "lt":"now"
         }
      }
   } 
},
 "dest": {
 "index": "index-data"
 }
}
'
}

update_es "worker01" || update_es "worker02"