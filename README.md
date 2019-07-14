# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version: 2.6.1

* Rails version: 5.2.3

* System dependencies
  - ruby 2.6.1
  - rails 5.2.3

* Database Using
  - postgres

* Deployment instructions
  * Create Gemset
    - rvm gemset create [name of gemset]
    - rvm --rvmrc [ruby version here]@[name of gemset]
    - bundle install

  * Create Database.yml
    - config/database.yml

  * Configuration
    - config/database.yml
    - Delete the old "credentials.yml.enc" and run this command "EDITOR="mate --wait" bin/rails credentials:edit"

  * Create database
    - rails db:create
    - rails db:migrate
    - rails server
