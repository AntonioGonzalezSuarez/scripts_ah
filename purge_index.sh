curl -u elastic:icai4ever -k -X POST "https://localhost:9210/index-data/_delete_by_query?pretty" -H 'Content-Type: application/json' -d'
{
"query": {
    "range": {
        "@timestamp": {
            "lte" :  "now-14d"
        }
    }
}
}
'
