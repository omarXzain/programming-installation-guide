## Uninstall & reinstall the MongoDB

- Run the following command in your Terminal to stop MongoDb server:

```
sudo service mongodb stop
```

- We want to remove all MongoDb packages that we installed previously.
  
```
sudo apt-get purge mongodb-org*
```

- Also, we should remove MongoDb databases and log files. Run the following commands one after another:
		
```
sudo rm -r /var/log/mongodb
```  
```
sudo rm -r /var/lib/mongodb
```  

or by using one command  
```
sudo rm -r /var/log/mongodb /var/lib/mongodb'
```

- To make sure that everything is uninstalled, run the following commands one after another: 

```
sudo apt-get purge mongodb mongodb-clients mongodb-server mongodb-dev`  
```
```
sudo apt-get purge mongodb-10gen
```  
```
sudo apt-get autoremove`  
```
Some of those commands might fail, depending on what packages you actually have installed, but that's okay.

This should also remove your config from /etc/mongodb.conf.
<br>
<br>
 ***Note:***

**if you did the steps using the [Microsoft’s directions](https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-database#install-mongodb), you may have created a directory named "data".  
remove this directory for now by:
`rm -rf data`**
