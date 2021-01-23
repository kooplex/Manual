Folder Structure
====

* **/v** is the root folder. All other folders are listed here.

* **/v/${username}** is the user's home folder. This folder can be accessed from every environment.

* **/v/workdir_projects/${project_name}** is the folder for a given project. This folder is shared among all the collaborators of the project. Collaborators can read and (over)write it's content at the same timetherefore some caution is needed. Content can be made read-only with the usual *chmod* command.

* **/v/synchron** This appears when at least one library from Seafile is mounted to the enironment. Follow steps [here](Seafile/Main.md) in order to mount synchronized libraries.

* **/v/vc** This appears when at least one repository from a version control system is associated with the enironment. Follow steps [here](VersionControl/Main.md) in order to access repositories.


When an *environment* is launched users land in the `/v` directory, which is read-only. In Jupyter one will see only `/` on the graphical interface and `/v` when launching a terminal. The user's permanent private folder is the `/v/${user_name}`.



