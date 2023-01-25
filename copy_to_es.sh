curl -XPOST localhost:9210/_reindex?pretty -H 'Content-Type: application/json' -d'
{
 "source": {
 "remote": {
 "host": "http://worker01:9200",
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
