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

### Controllers

Create a vanilla home controller
```language-powerbash
rails g controller home index
```


### Tasks

Run a server using a custom task
```language-powerbash
rails server:start
```

Custom task to wipe the database
```language-powerbash
rails db:wipe
```

```language-powerbash

```

```language-powerbash

```

```language-powerbash

```

Validate a Ranking
```language-powerbash
validates_numericality_of :rating, :greater_than_or_equal_to => 0.0, :less_than_or_equal_to => 10.0
```

