# Uygulamanıın çalışması için jdk gerekir

FROM openjdk:17

#Projemizin jar dosyasının konumu
ARG  JAR_FILE=target/*.jar


# Projenin jar halini docker ın içine şu isimle kopyala.hepsi küçük olsun
COPY ${JAR_FILE} my-application.jar

#terminalden çalıştırmak istediğin komutları cmd ile kullnıyorsunuz.
#CMD apt-get update
#CMD apt-get upgrade -y


# iç portu sabitlemek için kullanılır.
EXPOSE 8080

# uygulamanın çalışacağı komut
ENTRYPOINT ["java","-jar","my-application.jar"]
