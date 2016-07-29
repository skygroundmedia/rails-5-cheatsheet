#!/bin/sh

# 1. Drop the db schema
# 2. Create a new one
# 3. Migrate the data
# 4. Populate the data
rails db:purge db:create db:migrate db:seed --trace
