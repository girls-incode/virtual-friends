# Friends App

### Features

- Sign Up
- Sign In/Out
- Add a friend
- List user friends

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

### Steps to deploy on Heroku

- Make sure all code is pushed in the remote repo: `git push origin main`

- Install [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli)
    - `curl https://cli-assets.heroku.com/install-ubuntu.sh | sh`

- `heroku login -i`

- `heroku create`

- `heroku apps:rename virtual-friends --app theRandomGeneratedAppName`

- The app should be listed using: `heroku apps --all`

- Check the app at `https://virtual-friends.herokuapp.com`

- Add your public ssh key to heroku: `heroku keys:add`

- Make sure that Gemfile has `gem 'sqlite3', '~> 1.4'` only for development group and `gem 'pg', '~> 1.3', '>= 1.3.5'` in production group

- Run `bundle install --without production`

- Push the code to heroku: `git push heroku main`

- The app should be available at `https://virtual-friends.herokuapp.com/`.

    Nagivating to https://virtual-friends.herokuapp.com/users/sign_in or /sign_up will give an error `We're sorry, but something went wrong.` That's because the production uses postgress and we didn't upload pg migration to heroku.
    This should be done executing `heroku run rails db:migrate`.