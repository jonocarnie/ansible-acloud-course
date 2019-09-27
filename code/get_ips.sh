containers=$(docker ps | awk '{if(NR>1) print $NF}')

for container in $containers
do
    cont_ip=$(docker inspect $container | jq -r '.[].NetworkSettings.IPAddress')
    echo $container, $cont_ip
done