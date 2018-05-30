
# Download l'image
docker image pull mysql:8.0.3

#Création du conteneur
docker run --name Mysql-dev -v /home/tli/DEV/BDD:/var/lib/mysql -p 3307:3306  -e MYSQL_ROOT_PASSWORD=toto -d mysql:8.0.3



#Apache
docker build -t mon-site-dev /home/tli/DEV/apache

#pour lancer le conteneur
# a faire des param pour le lien ou ya le code
docker run -d -p 81:80 --name Apache-dev --link Mysql-dev:db -v /home/tli/DEV/AAA_CPE:/var/www/html mon-site-dev



# PHPMyADMIN
docker pull phpmyadmin/phpmyadmin

# Création du conteneur et link avec bdd
docker run --name Phpmyadmin-dev --link Mysql-dev:db -p 8181:80  -d phpmyadmin/phpmyadmin 

