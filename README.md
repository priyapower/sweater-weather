# Sweater Weather

## Table of Contents
- [Description](#description)
- [Learning Goals](#learning-goals)
- [Technology](#technology)
- [Setup](#setup)
- [Endpoint Documentation](#endpoint-documentation)
- [Consuming Endpoints](#consuming-endpoints)
- [Contact Me](#contact-me)

### Description
Sweater Weather is the backend of an application that allows users to plan road trips. Users can see the current weather and a future forecast for custom locations they enter, as well as plan details for a road trip which includes the forecasted weather at the destination at arrival time.

This follows a service-oriented architecture where a front-end application will consume this back-end application/server through API endpoints.

Sweater Weather is a Module 3 project for the Backend Engineering Program at the Turing School of Software and Design. Module 3 focuses on building and consuming APIs. This project was completed in 5 days, from Sunday, November 8th 2020 to Wednesday, November 11th, 2020.

- [Turing Project Page](https://backend.turing.io/module3/projects/sweater_weather/)
- [Project Requirements](https://backend.turing.io/module3/projects/sweater_weather/requirements)
- [Project Rubric](https://backend.turing.io/module3/projects/sweater_weather/rubric)

### Learning Goals
- Expose an API that aggregates data from multiple external APIs
- Expose an API that requires an authentication token
- Expose an API for CRUD functionality
- Determine completion criteria based on the needs of other developers
- Research, select, and consume an API based on your needs as a developer

### Technology
- Ruby 2.5.3
- Rails 5.2.4.3
- PostgreSQL database
- RSpec for testing

#### Gems (preloaded)
- [Faraday](https://github.com/lostisland/faraday)
- [Figaro](https://github.com/laserlemon/figaro)
- [Fast JsonAPI](https://github.com/Netflix/fast_jsonapi)
- [Bcyrpt](https://github.com/codahale/bcrypt-ruby)
- [Pry](https://github.com/pry/pry)
- [Rspec-rails](https://github.com/rspec/rspec-rails)
- [Capybara](https://github.com/teamcapybara/capybara)
- [Launchy](https://github.com/copiousfreetime/launchy)
- [Simplecov](https://github.com/simplecov-ruby/simplecov)
- [VCR](https://github.com/vcr/vcr)
- [Webmock](https://github.com/bblimke/webmock)
- [Shoulda Matchers](https://github.com/thoughtbot/shoulda-matchers)
<!-- - [Rubocop](https://github.com/rubocop-hq/rubocop) -->

### Setup
#### API Keys
Please secure api keys from the following websites  
_You will add these to your ```config/application.yml``` file in the steps below_
1. [OpenWeather API]() ```OPEN_WEATHER_KEY: <your-api-key>```
1. [MapQuest API]() ```MAPQUEST_KEY: <your-api-key>```
1. [Bing API]() ```BING_KEY: <your-api-key>```

#### Environment
1. Fork and clone [this](https://github.com/priyapower/sweater-weather) repo
  - In terminal use ```git clone <clone code from github>```
1. In your terminal
  - Run ```bundle install```
  - Run ```rails db:{create,migrate}```
  - Run ```bundle exec figaro install```
    - The above command creates a ```config/application.yml``` (you may get a notice this file is already in the ```.gitignore``` file)
    - Add your environment variables and api keys to the yml file (see API Keys section above)
1. To run the local tests: ```bundle exec rspec```
1. To run the local server: ```rails s```

### Endpoint Documentation
_To consume using your local server, in terminal run ```rails s``` before making these calls_

**Forecast**  
GET ```/api/v1/forecast?location=<city, state>```  
- Gets the the current, hourly, and daily forecast for a specfied location
- Example call:
  - GET ```http://localhost:3000/api/v1/forecast?location=denver,co```

**Background Image**  
GET ```/api/v1/backgrounds?location=<city, state>```
- Finds an image that is related to the specified location and enters current time (in human speak, aka morning) and current weather conditions for a more accurate background forecast image
- Example call:
  - GET ```http://localhost:3000/api/v1/backgrounds?location=denver,co```

**User Registration**  
POST ```/api/v1/users```
- Registers a new user while generating a secure api key
- Example call:
  - POST ```http://localhost:3000/api/v1/users```

**User Login**  
POST ```/api/v1/sessions```
- Authenticates a user during the login process
- Example call:
  - POST ```http://localhost:3000/api/v1/sessions```

**Road Trip**  
POST ```/api/v1/road_trip```
- Given an origin and destination, this returns the estimated travel time and the forecast upon arrival for a road trip
- You must be a registered user with an authenticated api key to use this
- Example call:
  - POST ```http://localhost:3000/api/v1/road_trip```

### Consuming Endpoints
It is recommended to use [Postman](https://www.postman.com) as your collaboration platform for API development.  
However, feel free to use any platform that allows you to send query params and request bodys (as raw json formats).  
**Examples will showcase while using the Postman Desktop Client**

#### Example: Background Image (only query params)
In terminal, run ```rails s``` (if you need a different port, use ```rails s -p <port number>``` - remember to use your custom port in the requests instead).

In Postman, fill out the following in a new request (press the plus on the tabs for a new request).

IMAGE OF GET REQUEST FOR BACKGROUNDS

Clicking Send should render a ```status:200``` and the following response.

IMAGE OF RESPONSE

#### Example: User Registration (raw json body)
In terminal, run ```rails s``` (if you need a different port, use ```rails s -p <port number>``` - remember to use your custom port in the requests instead).  

In Postman, fill out the following in a new request (press the plus on the tabs for a new request).

IMAGE OF POST REQUEST FOR USERS

You must also include a raw json body. Click on the ```Body``` tab (under your url field) and select ```raw```, then select ```JSON``` from drop down.

IMAGE OF RAW JSON BODY

Clicking Send should render a ```status:200``` and the following response.
IMAGE OF RESPONSE


### Contact Me
**Priya Power**
- LinkedIn: [Priya Power](https://www.linkedin.com/feed/)
- Github: [priyapower](https://github.com/priyapower)