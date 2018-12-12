require 'open-uri'
require_relative './lib/Ghibli_cli/film.rb'

class Scraper
  def self.get_film
    data = open("https://ghibliapi.herokuapp.com/films")
    JSON.parse(data)
  end
end