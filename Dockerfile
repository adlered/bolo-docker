FROM adlered/tomcat

ADD config.sh /
RUN chmod 777 /config.sh
ADD run.sh /
RUN chmod 777 /run.sh
ADD bolo.zip /
RUN unzip -q /bolo.zip -d /apache-tomcat/webapps/ROOT/
RUN echo "Bolo 容器已部署完成！请参考帮助文档以运行 Bolo ！欢迎你的使用。"
