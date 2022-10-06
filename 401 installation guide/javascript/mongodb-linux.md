# Linux
<br>

### Please open your Terminal and run the following commands one after another to install the MongoDB client and server:


```
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
```
```
sudo apt-get install gnupg
```
```
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
```
```
sudo apt-get update
```
```
sudo apt-get install -y mongodb-org
```

After installation completes, we’ll need to setup MongoDB as a **service** so that it can easily be restarted. Enter the following commands, in order, to set this up:

```
sudo curl -s https://raw.githubusercontent.com/mongodb/mongo/master/debian/init.d -o /etc/init.d/mongod
```
```
sudo chmod 755 /etc/init.d/mongod
```
```
sudo service mongod start
```

**Note that: On Ubuntu Linux**, mongo will now automatically restart on every reboot.


 **Run the following command in your Ubuntu Linux to start mongo console.**

```
mongo
```

you will see something similar to this:

`````
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
`````

##  Finished
