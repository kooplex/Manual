#!/bin/bash

MODULE_NAME=manual
RF=$BUILDDIR/${MODULE_NAME}

mkdir -p $RF

DOCKER_HOST=$DOCKERARGS
DOCKER_COMPOSE_FILE=$RF/docker-compose.yml

case $VERB in

  "build")
    echo "1. Configuring ${PREFIX}-${MODULE_NAME}..."
      mkdir_svclog
      mkdir_svcdata

      mkdir_svcdata _code_
      HELPER_CODE_DIR=/data/manual/
      #git clone https://github.com/kooplex/Manual.git /tmp/manual
      kubectl cp /tmp/manual/docs helper:$HELPER_CODE_DIR

      cp build/Dockerfile  $BUILDMOD_DIR/Dockerfile

      docker $DOCKERARGS build -t ${PREFIX}-${MODULE_NAME} -f $BUILDMOD_DIR/Dockerfile $BUILDMOD_DIR
      docker $DOCKERARGS tag ${PREFIX}-${MODULE_NAME} ${MY_REGISTRY}/${PREFIX}-${MODULE_NAME}
      docker $DOCKERARGS push ${MY_REGISTRY}/${PREFIX}-${MODULE_NAME}
      
      sed -e s,##PREFIX##,$PREFIX, \
          -e s,##MODULE_NAME##,$MODULE_NAME, \
	  build/${MODULE_NAME}-svcs.yaml-template > $BUILDMOD_DIR/${MODULE_NAME}-svcs.yaml

      sed -e s,##PREFIX##,$PREFIX, \
          -e s,##MODULE_NAME##,$MODULE_NAME, \
          -e s,##SERVICENODE##,${SERVICE_NODE}, \
          -e s,##MY_REGISTRY##,$MY_REGISTRY, \
	  build/${MODULE_NAME}-pods.yaml-template > $BUILDMOD_DIR/${MODULE_NAME}-pods.yaml

  ;;
  "install")
      #git clone https://github.com/kooplex/Manual.git $SRV/_manual
      kubectl apply -f $BUILDMOD_DIR/${MODULE_NAME}-svcs.yaml
      register_module_in_nginx
  ;;

  "start")
    echo "Starting manual ${PREFIX}-${MODULE_NAME}"
      kubectl apply -f $BUILDMOD_DIR/${MODULE_NAME}-pods.yaml
  ;;
    
  "stop")
    echo "Stopping manual ${PREFIX}-${MODULE_NAME}"
      kubectl delete -f $BUILDMOD_DIR/${MODULE_NAME}-pods.yaml
  ;;
    
  "remove")
    echo "Removing manual ${PREFIX}-${MODULE_NAME}"
      deregister_module_in_nginx
      echo "Deleting services of ${PREFIX}-${MODULE_NAME}" >&2
      kubectl delete -f $BUILDMOD_DIR/${MODULE_NAME}-svcs.yaml || true
  ;;
    
  "purge")
    echo "Purging manual ${PREFIX}-${MODULE_NAME}"
    rm -R $RF

    docker $DOCKERARGS volume rm ${PREFIX}-manual
  ;;
    
esac
