# Developer notes

* kooplex-config
  * nginx
  * impersonator
  * notebook
  * hydra
* kooplex-hub
  * hub/view 
  * hub/template
  * hub/model
  * kooplex/lib

## How to add a plugin

A plugin may be an application that is running in a docker container/kubernetes pod etc. A plguin needs to have a **configure.sh** in which all the information and commands are written down that is needed for 
* building/pulling the image from which the pod is started -> this goes into the *build* directory
* how it interacts with other components of kooplex (nginx, hydra etc...) -> this goes into the *conf* directory
* and how it is started and stopped

