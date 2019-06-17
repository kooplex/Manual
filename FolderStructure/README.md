Folder Structure
====

What is where?

When a 'notebook' is launched users land in the /home directory. In Jupyter one will see only / on the graphical interface and /home when using a terminal. This folder is not writable. The user's permanent private folder is the /$USER (in the examples $USER is 'wfct0p').

The rest of the folders differ in case of a Course container or a Project container. Course containers are used in teaching and Project containers in research or other collaborative activities.

Course container's folder structure for students

All assignments will appear in the workdir directory in separate folders.

After submitting/collecting an assignment the corrector will see the students' folders and by using the feedback form they will be able to grade the work, give feedback and return the assignment to the student to improve it.

The contents of previous courses will be archived and they go into the /garbage folder. This folder is not yet automatically deleted, but we encourage everyone to keep valuable files in the $USER home directory.
Folder permissions Folder name 	/ 	/$USER 	/workdir 	/course 	/garbage
Permissions 	Read-only 	Read-Write 	Read-Write 	Read-only 	Read-only
Purpose 		Private, accessible from every container 	Folders here contain assignments, and they will be submitted/collected from here 	Place for other files (data, templates etc) 	An archive of previous courses

Course container's folder structure for teachers

* Folders placed into /courses/private can be assigned to students. These folders should contain only the notebooks and those files in which students are expected to work. Large datafiles, that need to be only read during for an assignment should be copied into /courses/public


To create and assignment click here

* and then fill out the form. It is possible to set a deadline to each assignment, when they are going to be collected automatically. This allows for writing exams on the lecture. By default at submission/collection of assignments the folders won't disappear from the students' working directory and it is possible to submit/collect them again at a later time.

After submitting/collecting the assignment a corrector should be chosen. The corrector will be able to see the students' folders in their /workdir and by using the feedback form they will be able to grade the work, give feedback and/or to return the assignment to the student to improve it.

Folder permissions Folder name 	/ 	/$USER 	/course/(private,public) 	/workdir 	/garbage
Permissions 	Read-only 	Read-Write 	Read-Write 	Read-only 	Read-only
Purpose 		Private, accessible from every container 	Private contains assignments and public is for additional (large) data files, templates etc 	Students' working dirs appear here 	An archive of previous courses

Project container's folder structure

The /share directory contains all the shared folders for the projects that are assigned to the given container. One can access multiple projects in a container.

The /$USER home is a private directory and accessible from all container.

/workdir is an extra private folder for the user, but it belongs to the certain project.

It is possible to use accounts for version control systems such as GitHub or private GitLab. The user needs to create a token and paste it in the manage secrets menu. After that the chosen repositories will appear in the /git directory.
Folder permissions Folder name 	/ 	/$USER 	/share/$projectname 	/workdir/$projectname 	/report/_prepare 	/git/$repository
Permissions 	Read-only 	Read-Write 	Read-Write 	Read-Write 	Read-Write
Purpose 		Private, accessible from every container 	All collaborator of the same project have read-write access to this folder. Large data files, templates and other commonly used files should be placed here. 	Contents for reports should placed into separate folders. 	Version controlled repositories can be accessed here.

Reports

The types of reports are explained in the other section. Reports can be made only out of the folders placed into /report/_prepare directory. Once a report is created it's snapshot is saved into the /report directory as a read-only folder.

