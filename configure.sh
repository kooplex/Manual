#!/bin/bash

MODULE_NAME=manual
RF=$BUILDDIR/${MODULE_NAME}

mkdir -p $RF

DOCKER_HOST=$DOCKERARGS
DOCKER_COMPOSE_FILE=$RF/docker-compose.yml

case $VERB in

  "build")
    echo "1. Configuring ${PREFIX}-manual..."
      
      mkdir -p $SRV/_manual
      docker $DOCKERARGS volume create -o type=none -o device=$SRV/_manual -o o=bind ${PREFIX}-manual


      cp Dockerfile  $RF
      
      sed -e "s/##PREFIX##/$PREFIX/" \
          -e "s/##EXTRACONFIG##/$EXTRACONFIG/" docker-compose.yml-template > $DOCKER_COMPOSE_FILE

      echo "2. Building ${PREFIX}-manual..."
      docker-compose $DOCKER_HOST -f $DOCKER_COMPOSE_FILE build 
  ;;
  "install")
      git clone https://github.com/kooplex/Manual.git $SRV/_manual
  ;;
  "install-hydra")
  #  register_hydra $MODULE_NAME
  ;;
  "uninstall-hydra")
   # unregister_hydra $MODULE_NAME
  ;;
  "install-nginx")
    register_nginx $MODULE_NAME
  ;;
  "uninstall-nginx")
    unregister_nginx $MODULE_NAME
  ;;

  "start")
    echo "Starting manual ${PREFIX}-manual"
    docker-compose $DOCKERARGS -f $DOCKER_COMPOSE_FILE up -d
  ;;

  "restart")
    echo "Restarting manual ${PREFIX}-manual"
    docker $DOCKERARGS restart $PREFIX-manual
  ;;

  "init")
  ;;
    
  "stop")
    echo "Stopping manual ${PREFIX}-manual"
    docker-compose $DOCKERARGS -f $DOCKER_COMPOSE_FILE down
  ;;
    
  "remove")
    echo "Removing manual ${PREFIX}-net"
    docker-compose $DOCKERARGS -f $DOCKER_COMPOSE_FILE kill
    docker-compose $DOCKERARGS -f $DOCKER_COMPOSE_FILE rm
  ;;
    
  "purge")
    echo "Purging manual ${PREFIX}-manual"
    rm -R $RF

    docker $DOCKERARGS volume rm ${PREFIX}-manual
  ;;
    
esac
