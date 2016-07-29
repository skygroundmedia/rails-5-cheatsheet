namespace :db do
	desc %Q{ 1. Drop the db schema \n 2. Create a new one \n 3. Migrate the data \n 4. Populate the data }
  task wipe: :environment do
		sh %{ rails db:purge db:create db:migrate db:seed --trace  }
  end
end
