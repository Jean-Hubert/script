
#A faire
#Variable d'environnement et tout

# creation de la structure
# récupération du dockerfile
git clone https://github.com/SebDEP69/Docker

# récupération du site

git clone https://github.com/SanchisFloriane/AAA_CPE



apt-get update && apt-get install docker && apt-get install docker.io -y



#MYSQL

# Download l'image
docker image pull mysql:8.0.3

#Création du conteneur
#docker run --name mysqldb -v /home/tp/base:/var/lib/mysql -p 3306:3306 -e MYSQL_DATABASE=AAA -d mysql:5.7.21
#docker run --name mysqldb -v /home/tp/base:/var/lib/mysql -p 3306:3306  -e MYSQL_ROOT_PASSWORD=toto -d mysql:8.0.11
docker run --name mysqldb -v /home/tp/base:/var/lib/mysql -p 3306:3306  -e MYSQL_ROOT_PASSWORD=toto -d mysql:8.0.3


#Apache
docker build -t mon-site ./Docker

#pour lancer le conteneur
# a faire des param pour le lien ou ya le code
docker run -d -p 80:80 --name mon-serveur-site --link mysqldb:db -v $(pwd)/AAA_CPE:/var/www/html mon-site



# PHPMyADMIN
docker pull phpmyadmin/phpmyadmin

# Création du conteneur et link avec bdd
docker run --name phpmyadmin --link mysqldb:db -p 8080:80  -d phpmyadmin/phpmyadmin 



