# README
* Ruby: v2.6.3
* Rails: v5.2.3
* Postgres: v11.3

## lamvdoan-site
My personal profile site uses the technologies: Ruby, Rails, CSS/HTML, Postgres, Herokuapp, Google Domains

http://lamvdoan.com


## Environment Set Up
1. Install Ruby: 
```
xcode-select --install
```
2. Install RVM and use 2.6.3: https://rvm.io/
3. Install and start Postgres: 
```
brew install postgresql && pg_ctl -D /usr/local/var/postgres start
```
4. Get latest gem: 
```
gem update --system
```
5. Use global for RVM: 
```
rvm gemset use global
```
6. Install bundler: 
```
gem install bundler
```
7. Install nokogiri: 
```
gem install nokogiri
```
8. Install rails: 
```
gem install rails
```
9. Install all your gems within Gemfile: 
```
bundle install
```
10. Run DB migration: 
```
rails db:migrate
```


## Heroku Setup
1. heroku login
2. heroku create <unique app name>
3. git push heroku master
4. heroku config:set <Attribute in .env>=<key>
* Also add secret_base_key: heroku config:set SECRET_KEY_BASE=<secret_base_key from devise.rb>
5. heroku run rake db:migrate
6. heroku run rails c
7. Create Topic
```rails
Topic.create!(title: "Travelling")
```

## Setting up custom domain using Google Domains
1. In the command line of heroku: 
```
heroku domains:add www.yourcustomdomain.com
```
2. Enter this command: 
```
heroku domains:wait 'www.yourcustomdomain.com'
```
3. Enter this command: 
```
heroku domains
```
4. Copy the DNS target for when setting up Google Domain settings
5. Gog to Google Domains > Create an account and sign up for a custom domain
6. Go to your custom domain > DNS > Scroll down to Synthetic records
* subdomain = @
* Destination URL = <www.yourcustomdomain.com>
* Click Add
7. Scroll to Custom Resource Records
* Name = www
* Dropdown = CNAME
* IPv4 address = Heroku DNS target that you copied above
* Click Add
8. Load your custom domain on a browser, we are done!
