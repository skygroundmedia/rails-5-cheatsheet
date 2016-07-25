# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* 

Ruby Version 5.0

* System dependencies

Devise


* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

# Commands

### Create a new rails app

```language-powerbash
rails new cheatsheet -d postgresql
```

### Add gems to ```Gemfile```

### Install Gem

```language-powerbash
bundle install
```

### Install ```devise```

```language-powerbash
rails g devise:install
```

### Folow ```devise``` instructions


### Create vanilla rails controller

```language-powerbash
rails g controller home index
```

### Create the Devise model

```language-powerbash
rails g devise User
```

### Create the Devise view

```language-powerbash
rails db:create db:migrate
```


```language-powerbash
rails g devise:views
```


Add this code fragment to /app/models/user.rb.
```language-powerbash
before_action :authenticate_user!  
```

```language-powerbash

```

```language-powerbash

```

```language-powerbash

```

```language-powerbash

```

```language-powerbash

```

```language-powerbash

```

```language-powerbash

```

