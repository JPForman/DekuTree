# _Luigi's Grub Reviews_

#### A program for tracking products and their reviews.

###### By Joshua Forman

## Description

_This program is designed for the user to be able to input new products, input new reviews for any product, update both products and reviews, and delete any products or reviews. This was completed in Ruby with Rails and ActiveRecord._  



## Setup

_Using command line:_
* _$ git clone https://github.com/JPForman/Luigis-Grub-Reviews.git
* _$ bundle install_
* _$ rake db:create_
* _$ rake db:test:prepare_
* _$ rake db:migrate_
* _$ rails s_
* _navigate to your browser and go to localhost:3000_

## Note

_Admin permissions can only be added outside of the program:_
* In command line while in root project directory:
* $ rails c
* IRB: User.create(email: "admin_email@g.com", password: admin_password6charMinInt, admin: "true")
* _You can check if has been added to the table in psql_



_A demo admin and user account have been added to the seed with the following authentications:_  

_USER_  
_email: epicodusUser@epicodus.com_  
_password: 123456_  

_ADMIN_  
_email: epicodusAdmin@epicodus.com_  
_password: 123456_  




## Specs

1. _Full CRUD functionality for products._

2. _Full CRUD functionality for reviews._

3. _Routing for a one to many relationship._

4. _GUI for input and print of key elements._

_(for more detailed specs, see included specs files)_

## Support and contact details

_Email: [cyborgforman@gmail.com](mailto:cyborgforman@gmail.com)_

## Technologies Used

_Ruby, Sonatra, rspec, PostgreSQL_


### Known Bugs
_needs styling_  
_needs more thorough testing_  
_cost display needs another decimal place_  

### License

*MIT*

Copyright (c) 2020 **_Joshua Forman_**
