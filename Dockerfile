FROM adlered/tomcat

ADD config.sh /
ADD run.sh /
ADD bolo.zip /
RUN chmod 777 /run.sh \
    && chmod 777 /config.sh \
    && unzip -q /bolo.zip -d /apache-tomcat/webapps/ROOT/ \
    && ln -sf /dev/stdout /apache-tomcat/logs/catalina.out
RUN echo "Bolo 容器已部署完成！请参考帮助文档以运行 Bolo ！欢迎你的使用。"
