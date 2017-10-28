# ChopChop
ChopChop is a web application for restaurants that allows online ordering of food. This application allows a registered admin to upload food items with name, price, category and image. The uploaded food items are then displayed on the homepage for users to view and for registered users to order. An email notification is sent to both the user and the admin on every other placed, showing the order details.

## Development
This app was developed using ruby on rails, with erb as template.

## Technologies Used
* [Ruby:](https://www.ruby-lang.org/en/) Ruby is a dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write.
* [Rails:](https://http://rubyonrails.org/) Ruby on Rails, or Rails, is a server-side web application framework written in Ruby under the MIT License. Rails is a model–view–controller framework, providing default structures for a database, a web service, and web pages
* [Erb:](https://en.wikipedia.org/wiki/ERuby) Embedded Ruby is a templating system that embeds Ruby into a text document. It is often used to embed Ruby code in an HTML document, similar to ASP, JSP and PHP
* [PostgreSQL:](https://www.postgresql.org/) PostgreSQL is a powerful, open source object-relational database system (ORDBMS) that offers modern database features such as complex queries, foreign keys, etc.
* [CarrierWave:](https://github.com/carrierwaveuploader/carrierwave) CarrierWave is a gem that provides a simple and extremely flexible way to upload files from Ruby applications.
* [Cloudinary:](https://cloudinary.com/)  Cloudinary is an end-to-end image management solution for websites and mobile apps. It covers everything from image uploads, storage, manipulations, optimizations to delivery

## Installation
- Clone this repository to have the app on your machine with ```git clone https://github.com/noordean/ChopChop.git```
- Change directory to the app's root with ```cd ChopChop```
- Pull the development branch with ```git pull origin development```
- Then run ```bundle install```  to install the dependencies
- Start the server with ```rails s```
- Then visit ```http://localhost:3000``` to view the app.

It is hosted on heroku at <a href="https://chop-food.herokuapp.com/" target="_blank">ChopChop</a>.

## Limitations
- All uploaded food items are displayed on the homepage, no pagination is implemented.
- Users cannot update their profile
- No online payment integration is implemented

## How to Contribute
- Fork this repository.
- Clone it.
- Create your feature branch on your local machine with ```git checkout -b your-feature-branch```
- Push your changes to your remote branch with ```git push origin your-feature-branch```
- Open a pull request to the master branch, and describe how your feature works

### Author
Nurudeen Ibrahim