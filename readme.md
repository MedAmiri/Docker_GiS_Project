

### Platforme de publication des données Géographiques résiliente


## Geoserver 
dockerfile pour fabriquer l'image fini.
login : admin 
mot de passe : geoserver

## NGNIX 
partie à revoir.

## Postgres
- dockerfile pour fabriquer l'image de postgis.
- définir le maitre et l'esclave pour faire la replication dans le cas d'un mise à jour de la base de données (pas terminer)

## Docker compose 
à finir 


gosu postgres postgres --single <<- EOSQL
CREATE USER $USERNAME WITH PASSWORD '$PASSORD';
CREATE DATABASE $DB TEMPLATE template0 ENCODING 'UNICODE';
ALTER DATABASE $DB OWNER TO $USERNAME;
GRANT ALL PRIVILEGES ON DATABASE $DB TO $USERNAME;



cat > /var/lib/postgresql/data/pg_hba.conf <<EOS
# Generated by fix-acl.sh
# TYPE  DATABASE        USER            ADDRESS                 METHOD
# "local" is for Unix domain socket connections only
local   all             all                                     trust
# IPv4 local connections:
host    all             all             127.0.0.1/32            trust
# IPv6 local connections:
host    all             all             ::1/128                 trust
# Allow anyone to connect remotely so long as they have a valid username and 
# password.
host all all 0.0.0.0/0 md5
EOS


 volumes:
  - ./data:/var/lib/postgresql/data
<<<<<<< HEAD



teste merge 
=======
  - 
 http://www.pgpool.net/pgpool-web/contrib_docs/watchdog_master_slave_3.3/en.html
 http://www.synbioz.com/blog/postgresql_replication_pgpool2
 http://connect.ed-diamond.com/GNU-Linux-Magazine/GLMFHS-044/pgPool-II-la-replication-par-duplication-des-requetes
>>>>>>> cluster
