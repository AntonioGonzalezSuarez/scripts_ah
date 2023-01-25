function update_es_func()
{
    while True
    do
        ./remove_index.sh && ./copy_to_es.sh
        sleep 2m
    done
}
nohup $update_es_func > /dev/null &