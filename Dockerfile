FROM java:8-jre
ARG gitbucket_version

ADD https://github.com/gitbucket/gitbucket/releases/download/$gitbucket_version/gitbucket.war /opt/gitbucket.war

RUN ln -s /gitbucket /root/.gitbucket

VOLUME /gitbucket

# Port for web page
EXPOSE 8080
# Port for SSH access to git repository (Optional)
EXPOSE 29418

CMD ["java", "-jar", "/opt/gitbucket.war"]
