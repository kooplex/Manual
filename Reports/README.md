Reports
=========


## Where to create reports?
Reports should be prepared in the `/home/report/_prepare/<report_name>` directory. From the Hub -> Reports dropdown menu you can create a new report, from the folders that are in `/home/report/_prepare/`. 
The whole directory will be copied into the `/home/report/<report_name>` directory as read-only. One report can have many versions and each snapshot will have a timestamp.

All relevant files should be in the `<report_name>` folder or its subfolders.

## How to publish a report?
In the menu click on the dropdown menu `Reports -> New report`.
 * **The name of your report** (required): this will appear as its title
 * **Folder** (required): the name of the folder, that contains the file(s) for the report
 * **A short description** (required): a description for the report
 * **Type fo report** (required): [See the types of reports below](#types)
 * **Index file** (required): the name of the (main) file for the report
 * **Image** (required): Image type for the container (in case of HTML chooses *None* )
 * **Password** (optional): Only relevant when ou have an html file 
 * **Directory name** (optional): a category name if more reports are to be published together
 
## Scope of reports
Reports can be either private or public.

 * private: only registered users are allowed to open it
 * public: it is visble to the public without logging in to Kooplex

## Reporttypes

There are four types of reports currently supported in Kooplex:
<a name=types"></a>
 * [HTML](html.md): Static or interactive self-contained htmlf file 
 * [BOKEH](bokeh.md): Interactive pages hosted by either bokeh or the jupyter-kernelgateway
 * [API](API.md): REST services running in jupyter notebooks.
 * [NB](notebook.md): publish the notebook itself


### Data and other files
When creating a report put all auxiliary files into the same folder and never reference any files or folders outside of the reports folder. You can however reference data via abosulute URL-s

## Securing your report
In order to secure the content one can use a password. This way it is possible to show plots or any other results to non-registered people but keep the content still confidential.
