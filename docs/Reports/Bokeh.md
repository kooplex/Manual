
### Bokeh reports
You will need to run a [bokeh server](https://bokeh.pydata.org/en/latest/docs/user_guide/server.html) in the background in order for the interactive widgets to work and process the events on the fly.
In kooplex 
There are [examples here](https://github.com/jegesm/Presentation-tricks/Bokeh) how to create such applications.

The main file that contains the core of the applications, and for which file the server will be looking should be named either `main.py` or `main.ipynb`. 

#### Preview of bokeh reports.
It is advisable to test your report before publishining it.

There is a bash file accessible in all user containers: `preview-bokeh.sh`. In the terminal you jus have to run 
```preview-bokeh.sh Example-hosted-app.ipynb``` 
and the first line of the output will  similar to this:
```You can check the result under https://kooplex-edu.elte.hu/notebook/wfct0p-dataexplvisu/report```
When you click on it it will redirect you to another tab in our browser and reveal the rendered report. If you see only a blank page, then it is possible that you have an error in your notebook. Switch back to the tab in which the terminal runs and check the error message.

If you make any changes in your application (python or ipython file) and save it then you have to stop the bokeh server and restart it to read the newly saved file.
  

### Dashboard Server 
This type of report tool consist of a dashboard (e.g. bokeh server) and a REST API (e.g. jupyter-kernel-gateway). The purpose of the dashboard server is to give the users a public tool to create narratives with state preserving, interactive figures. It is similar to the [narratives](https://nextstrain.org/docs/narratives/introduction) supported by the nextstrain platform.

The dashboard is used for customizing the figures with the available control items, such as sliders, checkboxes, filters etc. The current state of the figure is coded into an url. Later with this url one can retrieve the figure in exact same state via API, but without the control elements.


