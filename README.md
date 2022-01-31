[![Gem Version](https://badge.fury.io/rb/cities-in-turkey.svg)](https://badge.fury.io/rb/cities-in-turkey)

# CitiesInTurkey
Cities, towns, districts and quarters in Turkey

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cities-in-turkey'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install cities-in-turkey

## Usage

```ruby
CitiesInTurkey.cities  # returns all cities

CitiesInTurkey.cities.sample              # returns random city in Turkey
CitiesInTurkey.cities.sample.name         # Samsun
CitiesInTurkey.cities.sample.alpha_2_code # TR-55
CitiesInTurkey.cities.sample.towns        # towns of a random city as array

CitiesInTurkey.cities.sample.towns.sample
# returns random town of a random city in Turkey with towns, districts and quarters as array
CitiesInTurkey.cities.sample.towns.sample.name      # Bafra
CitiesInTurkey.cities.sample.towns.sample.districts # returns districts of a random town as array

CitiesInTurkey.cities.sample.towns.sample.districts.sample
# returns random district of a random town as array

CitiesInTurkey.cities.sample.towns.sample.districts.sample.name     # Köyler
CitiesInTurkey.cities.sample.towns.sample.districts.sample.quarters
# returns quarters of a random district as array

CitiesInTurkey.cities.sample.towns.sample.districts.sample.quarters.sample  # Kuşçular Köyü
```
## License

The gem is available as open source under the terms of the [MIT License](LICENSE.txt).
