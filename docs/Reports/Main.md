Reports
=========

## Where to create reports?
Reports should be prepared in the `/v/report_prepare/${project_name}/<folder>` directory. From the Hub -> Reports dropdown menu you can create a new report, from the folders that are in `/v/report_prepare/`. 
The whole directory will be copied into the `/v/published_reports/${project_name}/${report_name}` directory as read-only. 

All relevant files should be in the `${report_name}` folder or its subfolders.

A report always comes with a new enviroment and in case of any failure the message shown on the environments panel should give some information about the cause of the error.

## How to publish a report?
In the menu click on the dropdown menu `Reports -> New report`.
 * **The name of your report** (required): this will appear as its title
 * **Description** (required): a short description that explains what it is for
 * **Image** (required): Image type that sets up the environment for the report
 * **Password** (optional): Only relevant when ou have an html file 
 * **Scope** (required): Sets the visibility of the report. 
 * **Index file** (required): the name of the (main) file for the report. The whole directory will be copied into the report folder, so not only the index file but every other file and folder will be copied with it.
 
## Scope of reports
Reports can be either private, internal or public.

 * private: only the creator of the report can see it
 * internal (Not yet functional): only the selected group can see it
 * public: it is visble to the public without logging in to Kooplex

## Report types

There are many types of reports and soon the list can be extended with custom written Dockerfiles as well. Here are only the popular ones:
 * [HTML](Reports/Html.md): Static or interactive self-contained htmlf file 
 * [Bokeh](Reports/Bokeh.md): Interactive pages or applications hosted by either bokeh
 * [API](Reports/API.md): Hosted REST service
 * [Notebook](Reports/Notebook.md): publish the notebook itself, similarly to [binder](https://mybinder.org)
 * [Shiny](Reports/Shiny.md): The Shiny package has an attractive default style and offers many interactive tools
 * [Plotly dash](Reports/Plotly_dash.md): The Plotly dash is also a well designed and interactive suite


### Data and other files
When creating a report put all auxiliary files into the same folder and never reference any files or folders outside of the reports folder. You can however reference data via abosulute URL-s

## Securing your report
In order to secure the content one can use a password. This way it is possible to show plots or any other results to non-registered people but keep the content still confidential.

## Easily recreate or refresh you report
With the recreate button <img src="img/recreate-button.png"> you can easily update your report after any change to its folder. 

 
