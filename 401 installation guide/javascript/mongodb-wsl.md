# MongoDB for WSL2 | Ubuntu
<br>

### Please open your Ubuntu Terminal and run the following commands one after another to install the MongoDB client and server:

<br>

- **First thing we want to update your Ubuntu packages.**

```
sudo apt-get update
```

- **To Install MongoDB packages. run the command:**

```
sudo apt-get install mongodb
```

- **Confirm installation and get the version number.**

```
mongo --version
```

the result will be similar to this:

```
MongoDB shell version v3.6.3
```

- **Run the server.**

```
sudo service mongodb start
```


the result will be similar to this:

```	
* Starting database mongodb              [ OK ]
```

- **Run the command to start mongo console.**

```
mongo
```

you will see something similar to this:

```
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017
MongoDB server version: 3.6.3
Server has startup warnings:
2022-02-14T14:08:42.087+0200 I STORAGE  [initandlisten]
2022-02-14T14:08:42.087+0200 I STORAGE  [initandlisten] ** WARNING: Using the XFS filesystem is strongly recommended with the WiredTiger storage engine
2022-02-14T14:08:42.087+0200 I STORAGE  [initandlisten] **          See http://dochub.mongodb.org/core/prodnotes-filesystem
2022-02-14T14:08:42.797+0200 I CONTROL  [initandlisten]
2022-02-14T14:08:42.797+0200 I CONTROL  [initandlisten] ** WARNING: Access control is not enabled for the database.
2022-02-14T14:08:42.797+0200 I CONTROL  [initandlisten] **          Read and write access to data and configuration is unrestricted.
2022-02-14T14:08:42.797+0200 I CONTROL  [initandlisten]
2022-02-14T14:08:42.797+0200 I CONTROL  [initandlisten]
2022-02-14T14:08:42.797+0200 I CONTROL  [initandlisten] ** WARNING: /sys/kernel/mm/transparent_hugepage/enabled is 'always'.
2022-02-14T14:08:42.797+0200 I CONTROL  [initandlisten] **        We suggest setting it to 'never'
2022-02-14T14:08:42.797+0200 I CONTROL  [initandlisten]
>
```

-  **Check the service status.**

```
sudo service mongodb status
```


	
<hr>
<br>	
In case that you face any problem after you install MongoDb.

[Click Here To Repair](repair-mongodb.md)

<hr>

##  Finished

