

### API with jupyter-kernel-gateway
 With the `jupyter-kernelgateway` one create a REST services running in jupyter notebooks.
A [REST](https://en.wikipedia.org/wiki/Representational_state_transfer) service is basically an application that listens at an url and serves the queries that are addressed towards it. For example you can trigger one of its endpoint with additional variables and it will return with some data, that can be a number, a list or even an interactive plot (see [bokeh embed](https://bokeh.pydata.org/en/latest/docs/user_guide/embed.html)).

The specification can be found here API and these short tutorials at [ndres.me](https://ndres.me/post/jupyter-notebook-rest-api/), [blog.ouseful.info](https://blog.ouseful.info/2017/09/06/building-a-json-api-using-jupyer-notebooks-in-under-5-minutes/) and [examples here](https://github.com/jegesm/Presentation-tricks/JupyterKernel-gateway) worth a look before building your first REST service.

#### Preview of APIs
It is advisable to test your report before publishining it.

There is a bash file accessible in all user containers: `preview-nb-api.sh`. In the terminal you jus have to run 
```preview-nb-api.sh Example-hosted-app.ipynb``` 
and the first line of the output will  similar to this:
```You can check the result under https://kooplex-edu.elte.hu/notebook/wfct0p-dataexplvisu/report/help```
When you click on it it will redirect you to another tab in our browser and reveal the rendered report. If you see only a blank page, then it is possible that you have an error in your notebook. Switch back to the tab in which the terminal runs and check the error message.

All APIs must have a */help* endpoint. When clicking on it on the report page the link will always point to the */help* endpoint so anyone can learn about its usage. It is advisable to describe all endpoints clearly.

**important** Your API should always have either a `/help` endpoint, that explains the usage of your service (see [examples](https://github.com/jegesm/Presentation-tricks/JupyterKernel-gateway)) or have a documentation elsewhere.

If you make any changes in your application (python or ipython file) and save it then you have to stop the bokeh server and restart it to read the newly saved file.
