A simple login app built with Rails

https://quiet-brook-9003.herokuapp.com

To run this locally, simply download and unzip the zip folder. Then open up your command line, navigate to the folder, set up the database with the command bundle exec rake db:migrate (you need to have Bundler installed for this to work, see the note below for more information on how to do that) and start the server using the command rails s.

```
$ cd documents/Rails-Login-App-master
$ bundle exec rake db:migrate
$ rails s
```

Please note you will need Ruby 1.9.3, Rails 3.2.3 and various ruby gems installed on your computer to do this. To install Ruby 1.9.3, simply <A href="https://rvm.io/rvm/install">install RVM</a> and run ```$ rvm install 1.9.3```. To install Rails 3.2.3, first <a href="https://rubygems.org/pages/download">install RubyGems</a>, and run ```$ gem install rails -v 3.2.3```. Finally, to install the various other gems needed, first install Bundler ```$ gem install bundler```, navigate to the folder ```$ cd documents/Rails-Login-App-master``` and run ```$ bundle install --without production```

Once you have done that, just navigate to localhost:3000 in your browser. 
