#FROM docsifyapp/node-ci 
FROM littlstar/docker-docsify

ADD entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh
#EXPOSE 4000

WORKDIR /manual

#ENTRYPOINT ["sleep", "infinity"]
ENTRYPOINT ["/entrypoint.sh"]


