#membuat images dengan nama item-app dan diberi tag v1
docker build -t item-app:v1 .

#melihat list docker images yang telah dibikin
docker images

#menyesuaikan images docker agar sesuai dengan persyaratan docker hub
docker tag item-app:v1 strixseloputo/item-app:v1

#masuk ke docker hub
echo $PASSWORD_DOCKER_HUB | docker login -u strixseloputo --password-stdin

#mengupload image ke docker hub
docker push strixseloputo/item-app:v1