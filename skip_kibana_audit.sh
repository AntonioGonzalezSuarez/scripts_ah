curl -u elastic:icai4ever -k -XPUT "https://localhost:9210/_cluster/settings?pretty" -H 'Content-Type: application/json' -d'
{
"xpack.security.audit.logfile.events.include ": ["access_denied"]
}'

