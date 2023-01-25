function update_es_func()
{
    while true
    do
        ./remove_index.sh && ./copy_to_es.sh
        sleep 2m
    done
}

update_es_func