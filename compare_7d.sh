echo "Query on local ES"
curl -u consultas:icai4ever -k -X GET https://localhost:9210/index-data/_search?pretty -H 'Content-Type: application/json' -d'

{ "size" : 0,"track_total_hits": true,

  "query": {

    "range": {

      "@timestamp": {

        "gte": "now-7d/d",

        "lte": "now-1d/d"

      }

    }

  }

}
' | python -c "import sys, json; print('Hits:',json.load(sys.stdin)['hits']['total']['value'])"

echo "Query on worker01"
curl -u consultas:icai4ever -k -X GET worker01:9200/index-data/_search?pretty -H 'Content-Type: application/json' -d'

{ "size" : 0,"track_total_hits": true,

  "query": {

    "range": {

      "@timestamp": {

        "gte": "now-7d/d",

        "lte": "now-1d/d"

      }

    }

  }

}

'|python -c "import sys, json; print('Hits:',json.load(sys.stdin)['hits']['total']['value'])"

