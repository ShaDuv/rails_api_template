# README

`rails new travel_part2 --api`
* Add gems to Gemfile
`bundle i`
`bundle exec rails g rspec:install`
* Add Response and ExceptionHandler modules to app/controllers/concerns and include them in ApplicationController
`rails g resource place`
* Generate a place migration, controller, model, spec files, and resource file.
* Add column names to places migration file.
`rake db:create`
`rake db:migrate`
`rails g resource review`
* Generate a review migration, controller, model, spec files, and resource file.
* Add column names to reviews migration file.
`rake db:migrate`
