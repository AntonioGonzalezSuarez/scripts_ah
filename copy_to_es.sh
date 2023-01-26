function update_es()
{
echo "Trying with ${1}"
url="http://${1}:9200"
curl -u elastic:icai4ever -k -XPOST "https://localhost:9210/_reindex?pretty" -H 'Content-Type: application/json' -d'
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
            "gte":"now-10d",
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
