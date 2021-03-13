docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi $(docker images -q)

sleep 2

git clone https://github.com/GreenpeaceSkunk/adn-greenpeace-client app
source app/setup production


# if [ "${1}" != 'dev' ] && [ "${1}" != 'dist' ]
# then
#   echo "Available params: dev | dist"
# else
  # git clone https://github.com/GreenpeaceSkunk/adn-greenpeace-client


  # if [ $1 = "dev" ];
  # then
  #   cp adn-greenpeace-client/.env.development.sample .env.development
  # fi;

  # if [ $1 = "dist" ];
  # then
  #   cp adn-greenpeace-client/.env.production.sample .env.production
  # fi;
  
  # docker-compose -f docker-compose-${1}.yml up --build --remove-orphans
# fi;
