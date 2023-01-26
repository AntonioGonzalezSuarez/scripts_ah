curl -X POST "localhost:9203/index-data/_delete_by_query?pretty" -H 'Content-Type: application/json' -d'
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
