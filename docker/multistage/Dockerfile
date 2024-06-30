FROM openjdk:11 AS buildstage 
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN javac Main.java

FROM openjdk:11-jre-slim 
COPY --from=buildstage /usr/src/myapp/Main.class /app/ 
WORKDIR /app 
CMD java Main