# Mac
### Please open your Terminal and run the commands one after another to install the MongoDB client and server:

**Note: Install MongoDb should not take much time, so you will need to start Mongo database server so that we can make sure the installation went well.**

- To download the official Homebrew formula for MongoDB and the Database Tools, run the following command in your macOS Terminal:

```
brew tap mongodb/brew
```

- To install MongoDB, run the following command in your macOS Terminal application:

```
brew install mongodb-community
```

- Now we will need to start Mongo database server so that we can make sure the installation went well by running the following command in your macOS Terminal:

```
brew services start mongodb-community
```

- **Run the following command in your macOS Terminal to start mongo console .**

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

