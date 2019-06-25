Containers
=================

*Containers* are ...

When a new *project* or a *course* is created then a *panel* like this 

![cont panel](/img/container-panel-default.png)

appears.
All [notebooks](../Concepts/README.md#notebook) run in a separate [docker container](../Concepts/README.md#container). These containers have limited resources, that are sufficient for writing new code, but not enough for large calculations. Containers can be stopped and then deleted. Stopped containers don't consume any resources. Deleting containers is needed if you want ot switch image or use an updated image. No data will be deleted, which reside in any of the /home folders (Folder structure explained).
When the user clicks on ![](/img/start-btn.png) under the Projects or Courses menu then a docker container starts. Clicking the  ![](/img/open-btn.png) button will redirect to the notebook servers url in another browser tab. The *panel* will change its state to

![cont panel](/img/container-panel-started.png)

The following symbols refer to the state of the container:
* ![](/img/disconnect-symbol.png) - there is no *container* created yet.
* ![](/img/stop-btn.png) - stop the running *container*. Only temporary files will be lost.
* ![](/img/burn-btn.png) - delete the *container*. Any data created **outside** of the [persistent folders](../FolderStructure/README.md) will be lost
* ![](/img/thrsh-btn.png) - This button shows up in the Containers menu. This will delete all non default entries in the Kooplex database that is related to this  *container*.


* ![](/img/present-symbol.png) - The *container* is not present in the docker engine but exist only in the Kooplex database.
* ![](/img/tick-symbol.png) - The *container* is present in the docker engine and running.
* ![](/img/x-symbol.png) - The *container* is present in the docker engine and stopped.
* ![](/img/deleted-symbol.png) - The *container* does not exist.

### Configuring *containers* 

In case of *projects* and *courses* the environment of the *containers* and the running *notebooks* can be configured.

* [Modify description](meta.md)
* [Add collaborators](collab.md)
* [Set the image and add volumes](image.md)
* [Add version controlled folders](vc.md)


