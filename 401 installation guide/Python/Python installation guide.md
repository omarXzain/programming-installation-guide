<h1 align="center">🐍 Welcome to the advanced python installation guide 🐍</h1>

## Please make sure that you have already finished the installation part from <a href="../../Computer Setup Guide/installation tutorial.md">Here</a> in order to continue to python part. if you do, then you can move to the next step

## Needed Tools

- First, you have to install the required tools. then, you'll do the configurations step by step.

## Python for windows 10 & 11

- download the file below and follow the instructions

<h2 align="center"> install Python by clicking the icon below </h2>

<p align="center"> <kbd><a href="https://www.python.org/ftp/python/3.10.2/python-3.10.2-amd64.exe"> <img height="180px" width="180px" src="images/python.png" alt="UBUNTU"></a></kbd>
  
  <h3 align="center"> also you need to install 2 extensions for Visual Studio Code: </h3>
  <p align="center"> <kbd><a href="https://marketplace.visualstudio.com/items?itemName=ms-python.python"> <img height="100px" width="100px" src="images/pythonEXT.png" alt="pythonEXT"></a></kbd> &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp<kbd><a href="https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig"> <img height="100px" width="100px" src="images/editorEXT.png" alt="editor"></a></kbd> </p>

- after you successfully install python and the extensions, you can move to the configurations part.

<hr>

## Configurations guide

### open `UBUNTU` and follow the commands step by step

- copy this command and paste it in UBUNTU ( Backup & new .profile creation )

```
mv .profile .oldProfile.bak && curl -s https://raw.githubusercontent.com/omarXzain/LTUC-ASAC/main/401%20installation%20guide/Python/.profile >> ~/.profile
```

## Install Zsh ( Unix shell used as command interpreter )

- WSL

  ```
  sudo apt-get install zsh
  ```

- Mac

  ```
  brew install zsh
  chsh -s /usr/local/bin/zsh
  ```

Then run

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- Type `Yes` if asked if you want to make zsh the default shell.

- Finally just copy-paste the text below into your terminal

```
cat >> ~/.zshrc<<EOF

# Source .profile, if present.
if [ -f "$HOME/.profile" ]; then
  source "$HOME/.profile"
fi
EOF
```

### you can always check [ohmyzsh documentation](https://github.com/ohmyzsh/ohmyzsh/wiki/Cheatsheet) for useful shortcuts

<br>

<hr>
<a href="Python installation guide_2.md">MOVE TO PART2</a>
