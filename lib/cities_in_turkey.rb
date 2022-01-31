require "cities_in_turkey/version"
require "cities_in_turkey/city"
require "cities_in_turkey/town"
require "cities_in_turkey/district"
require "cities_in_turkey/quarter"

require "yaml"

module CitiesInTurkey
  autoload :City, "cities_in_turkey/city"
  autoload :Town, "cities_in_turkey/town"
  autoload :District, "cities_in_turkey/district"
  autoload :Quarter, "cities_in_turkey/quarter"

  class Error < StandardError; end

  class << self
    def cities
      @cities ||= YAML.load_file(File.join(File.dirname(__FILE__), "cities_in_turkey/data/cities.yml")).map do |city|
        City.new(city['name'], city['alpha_2_code'], city['towns'])
      end
    end
  end
end
