---
title: Images
description: 
published: true
date: 2023-02-07T10:13:09.697Z
tags: public
editor: markdown
dateCreated: 2022-05-12T15:54:09.926Z
---

# Images
Docker images provide a consistent environment for browser-based applications, ensuring that all dependencies and configurations are included. This makes it easy to deploy, update, and scale applications across different systems without compatibility issues. Users benefit from improved reliability and simplified troubleshooting, as each container runs in isolation from the host system.

## Notebook servers
* **Jupyter** – A web-based interactive computing environment that allows you to create and share documents containing live code, equations, visualizations, and narrative text.
* **JupyterLab** – An advanced, flexible interface for working with Jupyter notebooks, code, and data, offering a more powerful user experience with support for multiple documents and activities.
* **RStudio** – An integrated development environment (IDE) for R, providing tools for writing scripts, running code, and visualizing data in a user-friendly interface.

## Remote Jupyter Kernels in VSCode
You can connect your desktop VSCode to remote Jupyter kernels hosted at [https://kooplex-example.hu/notebook](https://kooplex-example.hu/notebook):

1. **Install the Jupyter extension** in VSCode.
2. Open the Command Palette (`Ctrl+Shift+P`) and select **Jupyter: Specify Jupyter server for connections**.
3. Enter the URL of the remote Jupyter server:  
    `https://kooplex-example.hu/notebook`
4. Authenticate if prompted.
5. Open or create a `.ipynb` notebook file.  
    You can now select and use remote kernels provided by Kooplex directly from VSCode.

This setup allows you to leverage powerful remote resources while working in your familiar local VSCode environment.
Consists of all the necessary modules and attachments to serve e.g. an interactive plot, an applications that returns some data etc.

