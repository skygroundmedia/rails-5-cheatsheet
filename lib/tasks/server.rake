#http://stackoverflow.com/questions/2232/calling-shell-commands-from-ruby
namespace :server do
	desc "Run Rails while monitoring /app, /config"
	task :start do
		sh %{ rerun --dir config,app rails s  }
	end
end
