Seafile
=========

## How to install Desktop client
Visit https://www.seafile.com/en/download/ for further information on this

## Setting up Desktop client
When you are at the "add a client" section then on the left bottom corner push the **Single Sign on** button, insert *https://kooplex-fiek.elte.hu/seafile* and then follow the usual login process.

## Activate libraries in Kooplex 
<div align=center>
<img src="./img/file-synchronization-setup.png" width=800/>
</div>

In order to do this you have to
* Login at least once into Seafile (bottom left). 
* Click on *New token* (bottom right).
* and click *Refresh* to import the list of existing libraries.

Every time a new library is created within Seafile, the list needs to be refreshed.

### Mount a library into an evironment

<div align=center>
<img src="./img/file-synchronization-setup-env.png"/>
</div>

Toggle the *Mount* button and the library will appear in the *synchron* folder (Check the [folder structure]( FolderStructure/Main.md) for more details!
If the environment is already started then a warning will appear to restart the environment.
