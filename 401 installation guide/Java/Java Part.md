
<img  src="images/line-down.png" alt="Java">
<h3 align="center"><img height="100px" width="100px" src="images/Java.png" alt="Java"> Welcome to the advanced JAva installtion guide <img height="100px" width="100px" src="images/Java.png" alt="Java"></h3> 
<img  src="images/line-up.png" alt="Java">
## Please make sure that you have already finished the installation part from <a href="../../Computer Setup Guide/installation tutorial.md">Here</a> in order to continue to Java part. if you do, then you can move to the next step.

## Needed Tools:
- you have to install the required tools. then, you'll do the configurations step by step.

<h2 align="center"> install IntelliJ by clicking the icon below </h2>

<p align="center"> <kbd><a href="https://download-cdn.jetbrains.com/idea/ideaIC-2021.3.2.exe"> <img height="177px" width="177px" src="images/IntelliJ.png" alt="IntelliJ"></a></kbd>

- run the downloaded file `ideaIC-2021.3.2.exe` and don't forget to check the boxes like the image below:
  
<p align="center"><kbd> <img height="400px" width="480px" src="images/IntelliJ-config.png" alt="IntelliJ-config"></kbd> </p>

Note: a restart is required to update the path variables for IntelliJ

<hr>


<h2 align="center"> install Gradle by clicking the icon below </h2>
<p align="center"> <kbd><a href="https://services.gradle.org/distributions/gradle-7.4-bin.zip"> <img height="177px" width="177px" src="images/gradle.png" alt="Gradle"></a>

- How to 
  
  
## Configurations guide
### open `UBUNTU` and follow the commands line by line:
 
- first, let's update ubuntu packages using this command ( it will ask you for ubuntu password )
  
```
sudo apt-get update
```
- now, install Java on Ubuntu
  
```
sudo apt-get install default-jdk
```
  
<hr>

### Finally, let's make sure that everything is done as it should be:
- run the following commands
```
gradle -v
```
- you should get a result similar to this `7.4` or higher
  
  
- let's check the node version
```
javac --version
```
- you should get a result like this `v16.13.1` or higher
