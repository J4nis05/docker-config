FROM openjdk:17

EXPOSE 25565
EXPOSE 25575

WORKDIR /minecraft

COPY ./data/minecraft /minecraft

CMD ["java", "-Xmx4096M", "-Xms4096M", "-jar", "server.jar", "nogui"]
