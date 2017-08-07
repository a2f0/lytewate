[![Coverage Status](https://coveralls.io/repos/github/deepeeess/lytewate/badge.svg?branch=master)](https://coveralls.io/github/deepeeess/lytewate?branch=master) [![Build Status](https://travis-ci.org/deepeeess/lytewate.svg?branch=master)](https://travis-ci.org/deepeeess/lytewate)

# Overview

Rapid text and retrieval

# Heroku

Deploy the code

    git push heroku master

View the application logs

    heroku logs

Rails specific

    heroku run rake db:migrate
    heroku run rake db:seed
    heroku run rake lytewate:seed

Show environment variables

    heroku config

Get information about the app from the local working copy

    heroku apps:info

Backup the database

    heroku pg:backups:capture --app floating-chamber-55769

List Backups

    heroku pg:backups --app floating-chamber-55769

Get URLs for downloading backups

    heroku pg:backups:url --app floating-chamber-55769 | cat

Download the latest backup via the command line

    heroku pg:backups:download