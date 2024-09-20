# Getting Started

### Reference Documentation

# ==============docker login  ====================#
...
docker login --username osmanbilir --password 123456789
docker login -u osmanbilir -p 123456789
...

# =================nginx ======================
DIŞ_PORT:İÇ_PORT
docker run  -it -d -p 9991:80  --name my-nginx
http://localhost:9991


# =====================postgres =============
docker run --name my-postgres -p 9999:5432  -e  POSTGRES_PASSWORD=123456789 -d postgres


# ==================mysql  ==========================#
...

docker run --name my-mysql -p 9990:3306 -e MYSQL_ROOT=123456789 -d mysql 

...

#========= kendi projemizi docker image haline çevirmek =================#
#Sürüm verirken : kullanılır. Ayrıca sonda 1 boşluk ve nokta(.) bulunmalıdır.

docker build  --build-arg JAR_FILE=target/devops-001-hello-1.0.1.jar  --tag  kubobilir/devops-001-hello:v002 .
