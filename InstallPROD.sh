
# Download l'image
docker image pull mysql:8.0.3

#Création du conteneur
docker run --name Mysql-prod -v /home/tli/PROD/BDD:/var/lib/mysql -p 3306:3306  -e MYSQL_ROOT_PASSWORD=toto -d mysql:8.0.3



#Apache
docker build -t mon-site-prod /home/tli/PROD/apache

#pour lancer le conteneur
# a faire des param pour le lien ou ya le code
docker run -d -p 80:80 --name Apache-prod --link Mysql-prod:db -v /home/tli/PROD/AAA_CPE:/var/www/html mon-site-prod



# PHPMyADMIN
docker pull phpmyadmin/phpmyadmin

# Création du conteneur et link avec bdd
docker run --name Phpmyadmin-prod --link Mysql-prod:db -p 8080:80  -d phpmyadmin/phpmyadmin 

