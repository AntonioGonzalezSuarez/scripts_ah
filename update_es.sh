function update_es()
{
    while True
    do
        ./remove_index.sh && ./copy_to_es.sh
        sleep 2m
    done
}
nohup update_es > /dev/null &