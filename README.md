## <h1>Application Spring Boot ElasticSearch</h1>
***
<img src="https://blog.mossroy.fr/wp-content/uploads/2019/09/spring-boot-logo.png" alt="drawing" height="280px"/>

## Informations Générales
***
Mise en place d'un moteur de recherche avec Spring-boot
## Technologies
***
Technologies utilisées:
* Java 17 
* Maven 3.6
* Spring-boot: 3.2.3
## Instalation
***
Instalation et lancement du service elasticsearch sur le port 9200
```
Utilisation d'un docker-compose
version: '3'
services:
  elasticsearch:
    image: elasticsearch:8.8.0
    ports:
      - 9200:9200
      - 9300:9300
    environment:
      - discovery.type=single-node
      - xpack.security.enabled=false
```
Le lancement service elasticsearch<br>
```
docker-compose up -d
```
Lancement de l'application Spring-boot<br>
```
$ mvn  clean
$ mvn spring-boot:run
```
Le service est accessible sur http://localhost:8080

## FAQs
***
**Aucune Remarque**
