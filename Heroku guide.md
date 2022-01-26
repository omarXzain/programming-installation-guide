
# Steps to Deploy to Heroku with a Postgres Database

**Step 1:** create a new app on Heroku
- Either in the command line or in at [heroku.com](https://www.heroku.com/), create a new app
- Connect it to your GitHub repo
- Enable automatic deployment

**Step 2:** Go to the ‘resources’ tab

**Step 3:** Search for Heroku Postgresql
- Add the free version

**Step 4:** Go to the settings tab
- Click on the ‘reveal config vars’
- You should see a config variable called DATABASE_URL with some postgres url that Heroku is giving you

**Step 5:** In your terminal, run your schema on your Heroku database by doing the following:
- Navigate to where your schema file lives
- Type in the following command:

> `heroku pg:psql -f schema.sql --app HEROKU_APP_NAME_HERE`

**Step 6:**: Configure the SSL
- Remove:
> `const client = new pg.Client(process.env.DATABASE_URL);`

- Add
```javascript
const client = new pg.Client({
    connectionString: process.env.DATABASE_URL,
    ssl: { rejectUnauthorized: false }
});
```

**Step 7:** Continue app development
- Your Heroku database is running in the cloud. It's schema and data are not connected to your development environment. 
- If you change your schema locally, you will also need to make the same change in the production environment (your Heroku app). 

# Note
- Don't forget to add in the config vars on Heroku settings all the keys (api_key) that are added in the .env file in the project.
