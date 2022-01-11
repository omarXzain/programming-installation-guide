
# How to install Ubuntu and WSL Version 2 
## Part 1
- Please follow the instructions line for line carfully:
- before we start the installation part please make sure that you have the latest update for windows 10 in order to make the WSL enviroment to work
- go to your windows search bar and type `system information` to check your OS details and <b> hit ENTER </b>
- look at the Version number as you can see in the image below
 
![](images/winVersion.jpg)

- if it is lower than 19042 then you need to update, if it's the same number then no need to update the windows, we need this because it's required to make the WSL 2 work without any problems
## How to update windows?
- simply click on this update button <a href="//ms-settings:windowsupdate?activationSource=SMC-IA-4027667">Hi</a>

<img height="50px" width="200px" src="images/update10.jpg" alt="update your windows now">

- Now, we need to enable the required services for your machine.
- go to your windows search bar again and type >> `Turn Windows features on or off` << and hit enter, you should see a list of services ( check the image below )


<img height="480px" width="600px" src="images/features.jpg" alt="update your windows now">

### now scroll down and check the boxes for:
* `Virtual Machine Platform`
* `Windows Hypervisor Platform`
* `Windows Subsystem for Linux`


### Note:
#### if you want to run ubuntu inside a virtual machine ( virtualbox, vmware, etc ) then you need to enable extra services:
* `Containers`
* `Hyper-V`


- once you enabled the services click ok and then you are required to RESTART your machine in order to take effect.

### Note:
- sometimes the virtual machine service is DISABLED from your machine, if so, open cmd.exe as adminstrator and run this command:
```
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform
```
- RESTART your machine after that and it should work for you.

### now we need to run several commands using PowerShell
- search for PowerShell from windows search bar and open `PowerShell.exe` and run the following commands:
```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```
then
```
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```
- this will enable Virtual Machine Platform for WSL, if it ask for a restart then restart your machine to continue
---------------------------------------------
### now you need to install windows subsytem Linux 
- please click on the icon below to install it directly.
## <a href="https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi"> <img height="250px" width="250px" src="images/subsystemLinux.png" alt="WinsubsystemLinux"></a>
- after it finishes downloading please open the link to download WSL2 update for your windows

- install the downloaded file `wsl_update_x64.exe` and follow the setup instructions

install windows Terminal from this link
https://www.microsoft.com/en-us/p/windows-terminal/9n0dx20hk701?activetab=pivot:overviewtab

after it's succefully installed open the terminal and run this command to set you enviroment to WSL version 2
wsl --set-default-version 2

now we need to install UBUNTU from this link 
https://www.microsoft.com/en-us/p/ubuntu/9nblggh4msv6?activetab=pivot:overviewtab

