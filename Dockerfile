FROM tomcat:9.0-jdk11

COPY target/hapi.war /usr/local/tomcat/webapps/
#COPY target/hapi.war /usr/local/Cellar/tomcat/9.0.37/libexec/webapps/

ENV HAPI_DATASOURCE_URL jdbc:mysql://host.docker.internal:3306/hapi_test_data
ENV HAPI_DATASOURCE_DRIVER com.mysql.jdbc.Driver
ENV HAPI_DATASOURCE_USERNAME dbAdmin
ENV HAPI_DATASOURCE_PASSWORD j5Ke?oP!vd31
ENV HAPI_HIBERNATE_DIALECT org.hibernate.dialect.MySQL5InnoDBDialect

EXPOSE 8080

CMD ["catalina.sh", "run"]