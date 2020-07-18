if [ "$1" == "build" ]; then
    docker-compose build
fi
docker-compose up -d
docker-compose ps | sed s#0.0.0.0#http://localhost# | sed 's/->/ /'
