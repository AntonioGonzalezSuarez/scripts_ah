curl -u elastic:icai4ever -k -X POST "https://localhost:9210/_security/role/consultas?pretty" -H 'Content-Type: application/json' -d'
{
  "cluster": ["cluster:cluster-ah10"],
  "indices": [
    {
      "names": ["index-data"],
      "privileges": ["read", "indices:index-data"]
    }
  ]
}
'

