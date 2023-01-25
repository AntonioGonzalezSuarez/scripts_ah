function generate_post_data()
{
   cat <<EOF
   {
 "source": {
 "remote": {
 "host": "$1",
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
EOF
}


function update_es()
{
url="http://${1}:9200"
echo "$generate_post_data $url"
curl -XPOST localhost:9210/_reindex?pretty -H 'Content-Type: application/json' -d "$($generate_post_data $url)"
}

url="hola_mundo"
generate_post_data $url
#update_es "worker01" || update_es "worker02"