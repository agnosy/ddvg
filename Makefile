all:

create:
	rails new ddvg --database=postgresql

generate-models:
	rails generate model State name:string description:text type:string
	rails generate model Campaign name:string description:text start_state:references
	#rails generate model Transition name:string description:text from_state:references to_state:references condition:string
	#rails generate model Audio src:string text:text description:text
	#rails generate model Grammar src:string text:text description:text
	#rails generate model Say state:references audio:references
	#rails generate model Listen state:references prompt:references help:references noinput:references nomatch:references inputtype:string grammar:references
	#rails generate model Custom state:references url:string next:references
	#rails generate model Call state:datetime end:datetime

destroy-models:
	rails destroy model State
	rails destroy model Campaign
	#rails destroy model Transition
	#rails destroy model Audio
	#rails destroy model Grammar
	#rails destroy model Say
	#rails destroy model Listen
	#rails destroy model Custom
	#rails destroy model Call


drop-db:
	rake db:drop

recreate-db:
	rake db:drop db:create

load-testdata:
	rake db:fixtures:load RAILS_ENV=test

#clean: destroy-models recreate-db


reload-testdata:
	rake db:reset
	rake db:fixtures:load FIXTURES=campaigns,states,transitions,audios,grammars,says,listens,customs

heroku-reload-testdata:
	heroku pg:reset DATABASE_URL
	heroku run rake db:migrate
	heroku run rake db:fixtures:load FIXTURES=campaigns,states,transitions,audios,grammars,says,listens,customs

cache-creds:
	git config credential.helper 'cache --timeout=31536000'

