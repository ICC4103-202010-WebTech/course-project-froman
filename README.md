# README

* Ruby version: ruby 2.6.5p114

* Configuration: 

Run "yarn install --check-files"

Run "bundle install"

Run "rails db:setup" to execute migrations and seeds file.


--IMPLEMENTED FEATURES--

First of all, as this is a "read only", the user that is supposed to be logged in the server
is the one with "id: 3".

Most of the necessary navigation paths are implemented, exept for the "log in" and 
"sign in" pages.

At the end of this file there's a link to a postman collection, which has CRUD operations
for Events and Comments model.

Generic stylesheet implemented.


--PENDING FEATURES--

Polishing the stylesheet.

Add "log in" and "sign in" pages.


--POSTMAN--

https://www.getpostman.com/collections/f2b3d5bc20e22df5e3a9

It includes get/new/update/delete actions for events and comments in relation
with the user that its supposed to be logged in.


~Felipe Román~

