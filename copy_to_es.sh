function update_es()
{
url="http://${1}:9200"
curl -XPOST localhost:9210/_reindex?pretty -H 'Content-Type: application/json' -d'
{
 "source": {
 "remote": {
 "host": "'${url}'",
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