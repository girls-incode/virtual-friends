# Friends App

## Run the app

- Start the server

```
rails s
```

- Open http://localhost:3000/

## Configuration

An example to set up `friends` scaffold that generates a full set of model, database migration for that model, controller to manipulate it, views to view and manipulate the data, and a test suite for each of the above.

```bash
rails routes

rails g scaffold friends first_name:string last_name:string email:string phone:string twitter:string

rails g migration add_user_id_to_friends user_id:integer:index
rails db:migrate
```

## Database

The project uses sqlite for development environment, to view the tables you can use the [SQLite CLI](https://www.sqlite.org/cli.html) or [SQLite Browser](https://sqlitebrowser.org/) or a VSCode plugin like [SQLite Viewer](https://marketplace.visualstudio.com/items?itemName=qwtel.sqlite-viewer) or just query the DB using the [Rails console](https://guides.rubyonrails.org/command_line.html).

```
sudo apt install sqlite
sudo apt-get update
sudo apt-get install sqlitebrowser
```

Open `DB Browser for SQLite Version 3.12.1` -> Open Database -> `/db/development.sqlite3` -> Browser Data

```
rails console
# or rails c

# list all models
> ActiveRecord::Base.connection.tables

> Friend.all
> Friend.first
> Friend.last
> Friend.delete_all
```

## Run tests

## Deployment