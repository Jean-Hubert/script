docker run --name phpmyadmin --link mysqldb:db -p 8080:80  -d phpmyadmin/phpmyadmin 

docker run --name phpmyadmin --link mysqldb:db -p 8080:80  -d phpmyadmin/phpmyadmin 

docker run -d -p 80:80 --name mon-serveur-site --link mysqldb:db -v $(pwd)/AAA_CPE:/var/www/html mon-site