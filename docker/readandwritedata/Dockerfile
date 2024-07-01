FROM eclipse-temurin:22-jdk-alpine AS buildstage 
COPY ReadAndWriteData.java /usr/src/readandwritedata/
WORKDIR /usr/src/readandwritedata
RUN javac ReadAndWriteData.java

FROM eclipse-temurin:22-jre-alpine
COPY --from=buildstage /usr/src/readandwritedata/ReadAndWriteData.class /app/ 
WORKDIR /app 
VOLUME [ "/data" ]
CMD ["java", "ReadAndWriteData"]