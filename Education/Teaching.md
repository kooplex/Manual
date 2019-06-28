Teaching
===============

In addition to all the buttons and [information provided before](../Containers/README.md) there is an extra pencil button on each panel:

![](/img/course-partial.png)

As a teacher of the course you can 
* [Create and handout](#create) new assignments
* [Collect assignments](#collect)
* [Give feedback](#feedback) after correcting worksheets
* [Look at the summary](#summary) of scores


<div id="create">
</div>
## Create and handout assignments

In order to handout assignments you have to create a non empty folder in `/home/course/private`. Once it is created it will appear in configuration

![Edu Create](/img/edu-create.png)

* **Assignment name**:
A meaningful name that will appear in the feedback tables
* **Folder name:**
The name of the folder in which the necessary files are
* **Valid from, Expires at:**
It is possible to set a deadline to each assignment, when they are going to be collected automatically. This allows for writing exams on the lecture. 
* **Course codes:**
Course codes can be assigned by the administrators

By default at submission/collection of assignments the folders won't disappear from the students' working directory and it is possible to submit/collect them again at a later time.


<div id="collect">
</div>
## Collect assignments
Assignments can be either submitted by students, collected by teachers or if an expiration date is set, then it will be collected automatically.

![Edu collect](/img/edu-collect.png)

To collect an assignment tick the box next the students name and push the collect button in the lower right.

<div id="feedback">
</div>
## Feedback


#### Assign a corrector
On the feedback panel first you have to add yourself as the corrector

![Edu feedback](/img/edu-correct.png)

After that the content of the student's <br> `/home/workdir/<assignment_name>` <br> will be moved to your <br>`/home/feedback/<student_name_and_id>/<assignment_name>`.

#### Provide feedback
As the corrector you can add feedback as combination of a text and a score.

![Edu feedback](/img/edu-feedback.png)

When you click in the *Score* or *Feedback* region the **ready** option will be selected automatically. At the end click on the *Apply* button.

#### State of a student's assignment

A student's assignment can be different states:

* **Waiting for handout**: the assignment is created but it is still before its valid date
* **Working on assignment**: the assignment is handed out (or reassigned)
* **Collected, waiting for corrector**: the assignment was collected automatically 
* **Submitted, waiting for corrector**: the assignment was submitted by the student
* **Assignment is being corrected**: a corrector was assigned 
* **Assignment is corrected**: correction is done and the student can see the feedback

<div id="summary">
</div>
## Summary
