# Dueet

## Introduction

A To-do list created with Ruby on Rails, for CVWO AY2018/19 holiday assignment.

### Name

Quek Wei Ping

### Matriculation Number

A0136237H

## Versions

* ruby 2.5.1
* rails 5.1.4
* boostrap-sass 3.7.7

## Running the app in local environment

Clone this repo:
```
$ git clone https://github.com/qweiping31415/cvwo_assignment.git
```
Install all dependancies:
```
$ bundle install
```
Create database and run migration:
```
$ rake db:create db:migrate db:seed
```
Start the local server:
```
$ rails server
```
Now you can open this to-do app in your browser at http://localhost:3000/.

## Authentication

### The username and password for a sample administrator account:

* User name: admin@admin.com
* Password: adminuser

### The username and password for a sample user account:

* User name: person-{X}@example.org [where X is an integer from 1 to 99 inclusive]
* Password: 123456


