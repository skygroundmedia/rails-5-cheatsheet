# README

* 

Ruby Version 5.0

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

# Commands



---

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
#user:belongs_to could also be written user:references
rails g model vendor user:belongs_to first_name:string last_name:string gender:string birthdate:date occuptation:string city:string state:string zip_code:string --force
```

```language-powerbash
       rerun --dir config,app rails s
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

