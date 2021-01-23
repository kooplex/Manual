Plotly Dash server
=================

Deploying a dash server needs a bit of care or extra work from the user. 

### Testing the notebook in the container
You need to add the correct `url_base_pathname` to the *Dash* class and the `port`, `host` to the *run_server* function.

Here is an example script:

```
import os, numpy as np
import pandas as pd
import dash
import dash_core_components as dcc
import dash_html_components as html
#import dash_bootstrap_components as dbc
import plotly.graph_objects as go

######  THIS IS IMPORTANT  #####
REPORT_NAME = os.getenv("REPORT_NAME", "")
URL_PREFIX="/report/"+REPORT_NAME+"/"
REPORT_PORT = os.getenv("REPORT_PORT", 8000)
HOSTNAME = os.getenv("HOSTNAME","0.0.0.0")

#app = dash.Dash(__name__, external_stylesheets=[dbc.themes.SANDSTONE], url_base_pathname=URL_PREFIX)
app = dash.Dash(__name__,  url_base_pathname=URL_PREFIX)
###############################

rn = np.random.randint(10000)

df = pd.read_csv(
    'https://vincentarelbundock.github.io/Rdatasets/'
    'csv/datasets/OrchardSprays.csv')
df.set_index("Unnamed: 0").reset_index(drop=True)

fig_conf = go.Figure()
fig_conf.add_trace(go.Scatter(x=df.index, y=df.decrease,  
                              mode='lines+markers',
                              name='Confirmed',
                              line=dict(color='#29abe0', width=3),
                              marker=dict(size=6, color='white',
                                               line=dict(width=1,color='#29abe0'))))
fig_conf.update_layout( plot_bgcolor='white',
                        paper_bgcolor='white',
                        yaxis=dict(gridcolor='rgba(203, 210, 211,.3)'),
                        legend_orientation="h",
                        height=300,
                        margin=dict(
                            l=0,
                            r=0,
                            b=100,
                            t=0,
                            pad=0)
 )

app.layout = html.Div(children=[
    html.H1(children='Hello, this is a plotly dash test dashboard! '),
    html.Div(children=[
        html.Div(children=['A random counter: ', rn]),
    ]),
    dcc.Graph(
        id='example-graph',
        style={'width':'900px'},
        figure=fig_conf      
    )

])

####### AND THIS  #######
app.run_server(debug=False, port=REPORT_PORT, host=HOSTNAME)
#########################
```
