TO=$(date "+%FT%T")
FROM=$(date -d "-1 days" "+%FT%T")
FILEDATE=$(date "+%Y%m%d")

java -jar /home/shared/export.jar -c elastic:icai4ever -f @timestamp -from $FROM -i index-data -k $HOME/mykeystore.jks  -o $HOME/exports/export-$FILEDATE.txt -s "" -to $TO -u https://localhost:9210 &> logs.txt
gzip $HOME/exports/export-$FILEDATE.txt
