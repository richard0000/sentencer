# README

# Setup
You can follow the steps below in order to setup this project:

## Pre-requisites
- Have docker installed
- Have docker compose installed

## Steps
- Clone this project locally
- Execute the followgin commands: 
    - `docker compose build`
    - `docker compose run web rails db:create db:migrate db:seed`
    - `docker compose up`
