curl -u elastic:icai4ever -k -X POST "https://localhost:9210/_security/user/consultas?pretty" -H 'Content-Type: application/json' -d'
{
  "password" : "icai4ever",
  "roles" : [ "consultas" ]
}
'

