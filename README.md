# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Testing specifications for posts:
title: string
article: text
likes: integer
status: enum - published or unpublished
- title must be present
- title must be between 5 and 80 characters
- article must be present
- article must be between 20 and 600 characters
- likes must be positive
- status must be valid
