#FROM docsifyapp/node-ci 
FROM littlstar/docker-docsify

#ADD entrypoint.sh /entrypoint.sh

#EXPOSE 4000

WORKDIR /docs

#CMD ["sleep", "infinity"]
ENTRYPOINT ["sleep", "infinity"]


