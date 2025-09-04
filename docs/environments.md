---
title: Environments
description: 
published: true
date: 2024-10-17T11:07:30.545Z
tags: public, manual, kooplex-users, conda, image, jupyter, container, volume, attachment, project, course
editor: markdown
dateCreated: 2022-03-28T12:48:22.234Z
---

# Environments
## Create an environment
![Create a new environment](/static/container_new_launch.gif)

## Control panel for an environment
The panel: 
![panel](/static/env-panel.png)
    
---

**Explanation for the panel buttons:**

* <img src="/static/env-panel_toprow.png"/> </br>
    * Open Jupyter/Rstudio etc, 
    * The name of the environment
    * Stop the environment


* <img src="/static/env-panel_secrow.png"/> <br>
    * Enable [Teleport](/services/teleport) (for remote access with e.g. vscode)
    * Image type of the environment
    * Logs of the running environment
    * Status of the running environment


* <img src="/static/env-panel_thirow.png"/> <br>
    * Enable [Seafile](/services/seafile) cloud storae to be mounted into the environment
    * List and count of mounted (projects/volumes/courses)


* <img src="/static/env-panel_fourow.png"/> <br>
    * Limit of available resources: CPU, Memory and allowed idle timelength


* <img src="/static/env-panel_fifrow1.png"/><img src="/static/env-panel_fifrow2.png"/> <br>
    * Launch the environment
    * Delete permanently the environment 


In case of any problems with the *environment* the given *message* on the panel or in the logs might help to resolve the conflict, or should be reported to the site administrators when asking for help.
When it is **stopped** the container ceases to exist, but the files are kept that are in any of the [permanent storage spaces](folderstructure.md)

## Configure an environment !["/static/env-config-icon.png"](/static/env-config-icon.png)
* Name/Image/Resources
* Projects
* Courses
* Attachments
* Volumes

For example add a volume to an existing environment
![kooplex-volumetoenv.gif](/static/kooplex-volumetoenv.gif)

## Select an Image
One can choose a suitable working environment by choosing the right image.

> Docker images are the basis of containers. An Image is a template for virtualized/containerized working environments. Most of the necessary packages and utiities are installed into the images. [Read more](https://docs.docker.com/engine/reference/commandline/images/)

## Computational Resources
* **Node**: If permitted, then select a server for the environment
* **CPU/Memory**: If needed for computational or memory intensive calculations the container resources can be increased. Please mind that containers reserve these resources as long as they are running and no other container can use it.
* **GPU**: In case any nodes have GPU cards. 


## Package management within environments

* See [Package management](/packagemanagement)
* Some conda environments and non-conda tools might be installed into attachments -> See [Volumes, Storage](/static/volumes)
