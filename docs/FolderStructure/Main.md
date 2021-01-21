Folder Structure
====

* **/v** is the root folder. All other folders are listed here.

* **/v/${username}** is the user's home folder. This folder can be accessed from every environment.

* **/v/workdir_projects/${project_name}** is the folder for a given project. This folder is shared among all the collaborators of the project. Collaborators can read and (over)write it's content at the same timetherefore some caution is needed. Content can be made read-only with the usual *chmod* command.

* **/v/synchron** This appears when at least one library from Seafile is mounted to the enironment. Follow steps [here](Seafile/Main.md) in order to mount synchronized libraries.

What is where?

When a *Notebook* is launched users land in the `/home` directory, which is read-only. In Jupyter one will see only `/` on the graphical interface and `/home` when using a terminal. The user's permanent private folder is the `/$USER` (in the examples `$USER` is 'wfct0p').

The rest of the folders differ in case of a [*Course container*](course.md) or a [*Project container*](project.md). Course containers are used in teaching and Project containers in research or other collaborative activities.


Project container's folder structure

The `/share` directory contains all the shared folders for the projects that are assigned to the given container. One can access multiple projects in a container.

The `/$USER` home is a private directory and accessible from all container.

`/workdir` is an extra private folder for the user, but it belongs to the certain project.

It is possible to use accounts for version control systems such as GitHub or private GitLab. The user needs to create a token and paste it in the manage secrets menu. After that the chosen repositories will appear in the `/git` directory.
Folder permissions Folder name  /       /$USER  /share/$projectname     /workdir/$projectname   /report/_prepare        /git/$repository
Permissions     Read-only       Read-Write      Read-Write      Read-Write      Read-Write
Purpose                 Private, accessible from every container        All collaborator of the same project have read-write access to this folder. Large data files, templates and other commonly used files should be placed here.    Contents for reports should placed into separate folders.       Version controlled repositories can be accessed here.

Reports

The types of reports are explained in the other section. Reports can be made only out of the folders placed into /report/_prepare directory. Once a report is created it's snapshot is saved into the /report directory as a read-only folder.

