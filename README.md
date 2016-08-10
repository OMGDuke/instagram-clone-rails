# Instagram Clone

This is a clone of instagram built with Rails v5 and tested with Cucumber

### Installation

* Run `bundle install`
* Run `rails db:create`
* Run `rails db:migrate`
* Run `rails s`
* Navigate to http://localhost:3000

### Tests
* Ensure server is running
* Run `rake db:create RAILS_ENV=test`
* Run `rake db:migrate RAILS_ENV=test`
* Run `rake cucumber` for feature tests
* Run `rspec` for unit tests
