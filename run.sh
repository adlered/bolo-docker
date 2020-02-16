#!/bin/sh
########################
### 以下内容请勿编辑 ###
########################
source /config.sh

echo "runtimeDatabase=MYSQL" > "/apache-tomcat/webapps/ROOT/WEB-INF/classes/local.properties"
echo "jdbc.username=${MYSQL_USER}" >> "/apache-tomcat/webapps/ROOT/WEB-INF/classes/local.properties"
echo "jdbc.password=${MYSQL_PASS}" >> "/apache-tomcat/webapps/ROOT/WEB-INF/classes/local.properties"
echo "jdbc.driver=com.mysql.cj.jdbc.Driver" >> "/apache-tomcat/webapps/ROOT/WEB-INF/classes/local.properties"
echo "jdbc.URL=jdbc:mysql://${MYSQL_URL}/${MYSQL_DB}?useUnicode=yes&characterEncoding=UTF-8&useSSL=false&serverTimezone=UTC" >> "/apache-tomcat/webapps/ROOT/WEB-INF/classes/local.properties"
echo "jdbc.minConnCnt=5"  >> "/apache-tomcat/webapps/ROOT/WEB-INF/classes/local.properties"
echo "jdbc.maxConnCnt=10" >> "/apache-tomcat/webapps/ROOT/WEB-INF/classes/local.properties"
echo "jdbc.tablePrefix=b3_solo" >> "/apache-tomcat/webapps/ROOT/WEB-INF/classes/local.properties"

echo "serverScheme=${SCHEME}" > "/apache-tomcat/webapps/ROOT/WEB-INF/classes/latke.properties"

sed -i "s/<Connector port=\"8080\"/<Connector port=\"${PORT}\"/g" /apache-tomcat/conf/server.xml
sed -i "2i\JAVA_OPTS=\"-Dlute_http=${LUTE_HTTP}\"" /apache-tomcat/bin/catalina.sh

/apache-tomcat/bin/catalina.sh start

/bin/bash
