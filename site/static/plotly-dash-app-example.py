from dash import Dash, dcc, html, Input, Output
import plotly.express as px
import os

# Necessary variables
REPORT_URL = os.getenv("REPORT_URL")
REPORT_PORT = os.getenv("REPORT_PORT")
HOSTNAME = os.getenv("HOSTNAME")
SERVERNAME = os.getenv("SERVERNAME")

print(f'You can access your report at https://{SERVERNAME}/{REPORT_URL}')

# Create app with the proper url
app = Dash(__name__, url_base_pathname="/"+REPORT_URL)

app.layout = html.Div([
    html.H4("Country's key performance analytics"),
    html.P("Select data on y-axis:"),
    dcc.Dropdown(
        id='y-axis',
        options=['lifeExp', 'pop', 'gdpPercap'],
        value='gdpPercap'
    ),
    dcc.Graph(id="graph"),
])

@app.callback(
    Output("graph", "figure"), 
    Input("y-axis", "value"))
def display_area(y):
    df = px.data.gapminder() # replace with your own data source
    countries = (
        df.country.drop_duplicates()
        .sample(n=10, random_state=42)
    )
    df = df[df.country.isin(countries)]

    fig = px.area(
        df, x="year", y=y,
        color="continent", line_group="country")
    return fig

app.run_server(debug=False, port=REPORT_PORT, host=HOSTNAME)
