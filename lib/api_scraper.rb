require 'open-uri'
require 'net/http'
require 'json'

class Scraper
  def self.get_films
    data = open('https://ghibliapi.herokuapp.com/films').read
   JSON.parse(data)
  end
end

