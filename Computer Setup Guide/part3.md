# Part 3
# How to install node:
### we will install Node.js using nvm ( Node Version Manager )
- run this command to install Node Version Manager: ( it will take up to ~ <img height="40px" width="30px" src="images/Time.png" alt="update your windows now"> 6 mins)

```
brew install nvm
```
- once it's done, we need to `CLOSE UBUNTU` and re-open it again in order to take effect

- Now run this command to install Node: ( This will install the latest stable version of Node.js) ( it will take up to ~ <img height="40px" width="30px" src="images/Time.png" alt="update your windows now"> 4 mins )

```
nvm install --lts
```
- let's check the node version by running this command:
```
nvm ls
```
- you should see a result similar to this ( v14.17.3 or higher! )
<br> <br> <p align="center"><kbd>![](images/nodeCheck.jpg)</kbd></p>

- let's double check the node version by running this command:
```
node --version
```
- the output should be only the node version 
- in our case it's `v14.17.3` ( it's ok if you get higher version )

<hr>

# What is Git?
### a DevOps tool used for source code management to track the changes

## Install and Configure Git and GitHub

- Run the following command ( it will install the latest version ) ( it will take up to ~ <img height="40px" width="30px" src="images/Time.png" alt=""> 3 mins)
```
brew install git || brew upgrade git
```
## Now we need to configure the settings and connect you github account with your machine

### Setup GitHub for "Authentication"

- first, make sure that you already have a github account, if not then create one from here <a href="https://github.com/signup?source=login">GITHUB.com</a>

- install CLI ( Command line interface ) by completing the following steps from `UBUNTU`: ( it will take up to ~ <img height="40px" width="30px" src="images/Time.png" alt=""> 4 mins)
```
brew install gh
```

- after it's done run this command to login to your github account ( it will take up to ~ <img height="40px" width="30px" src="images/Time.png" alt=""> 3 mins)
```
gh auth login
```
#### Follow the steps carfully! it will ask you to choose diffrent settings ( check the image below and do the same )
`MAKE SURE THAT YOU ARE ALREADY SIGNED IN WITH YOUR GITHUB ACCOUNT`
<br> &nbsp; <p align="center"> <kbd>![](images/GithubSettings.png)</kbd></p>

- after you finish the settings, copy your one-time code and hit enter, This will open a web page that will ask you to put your code.

<p align="center"><kbd><img height="350px" width="400px" src="images/putcode.jpg" alt=""></kbd></p>

- Github will prompt you for the one time code. Enter in the 8 code insde the boxes and click continue.

<p align="center"><kbd><img height="350px" width="400px" src="images/verfiy-access.jpg" alt=""></kbd></p>
- Click Authorize github and you should see this result
<br> <p align="center"><kbd><img height="350px" width="400px" src="images/congrats.jpg" alt=""></kbd></p>

<h2 align="center"> All DONE 😀 </h2>

<hr>
<a href="part4.md">MOVE TO PART4 VSCODE</a>
