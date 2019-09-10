FROM openjdk:8-jre-alpine

COPY docker/start.sh start.sh
COPY target/kube-demo-0.0.1-SNAPSHOT.jar app.jar

RUN sh -c 'chmod u+x /start.sh'
ENTRYPOINT ["./start.sh"]