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

* Assignment name
* Folder
* Valid from
* Expires at
* Course codes

<div id="collect">
</div>
## Collect assignments
Assignments can be either submitted by students, collected by teachers or if an expiration date is set, then it will be collected automatically.

![Edu collect](/img/edu-collect.png)

To collect an eassignment tick the box next the students name and push the collect button in the lower right.

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

* Waiting for handout
* Working on assignment
* Collected, waiting for corrector
* Submitted, waiting for corrector
* Assignment is being corrected
* Assignment is corrected

<div id="summary">
</div>
## Summary
