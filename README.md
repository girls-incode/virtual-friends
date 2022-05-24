# Friends CRM

* Ruby version

* System dependencies

## Configuration

```bash
rails routes

rails g scaffold friends first_name:string last_name:string email:string phone:string twitter:string

rails g migration add_user_id_to_friends user_id:integer:index
rails db:migrate

```

## Database

```
sudo apt install sqlite
sudo apt-get update
sudo apt-get install sqlitebrowser
```

Open `DB Browser for SQLite Version 3.12.1` -> Open Database -> `/home/leta/Documents/gic_projects/ruby_rails/friends/db/development.sqlite3` -> Browser Data

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


* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
