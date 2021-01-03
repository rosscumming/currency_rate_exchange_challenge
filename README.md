# FreeAgent Coding Challenge

Thank you for your interest in the FreeAgent Coding Challenge. This template is a barebones guide to get you started. Please add any gems, folders, files, etc. you see fit in order to produce a solution you're proud of.

## Coding Challenge Instructions

Please see the INSTRUCTIONS.md file for more information.

## Your Solution Setup and Run Instructions

I built this program with Ruby 2.7.2, however it should work on other versions. To install, type the following:

```
brew install ruby
```

There are some dependecies required for this to work, to install please type:

```
gem install bundler

bundle install
```


## Testing 

Tests have been created to ensure accuracy. These tests run using RSpec. you can run RSpec with the following command:

```
rspec
```

To run RSpec with the created tests, run the following:

```
 rspec spec/currency_exchange_test.rb

```

## How to use the application

Start by typing:

```
pry
```

Then the following:

```
require './lib/currency_exchange'
```

To run the calculation on the currencies (example):

```
CurrencyExchange.rate(Date.new(2018, 11, 22), 'USD', 'GBP')
```

As the app makes use of error handling, type the following to see it in action when the date doesn't exist in the data:

```
CurrencyExchange.rate(Date.new(2020, 11, 22), 'USD', 'GBP')
```


## Your Design Decisions

Due to time constraints, there is a lot i would change and like to have implemented into this app. All logic is currently handlded within the rate method which with more time, id ensure more single responsibility was adhered to and split into their own methods.

I wanted to try out RSpec as with using Ruby, the only testing framework I've had use of is Minitest. I really enjoyed the syntax and readability that RSpec has to offer.

When it comes to other data sources, the instance variables which are used to load the JSON file currently can be changed to another source easily.  

Due to the nature of the instructions provided, I stuck to what was asked and did not change the methods themselves and worked with the information provided.
