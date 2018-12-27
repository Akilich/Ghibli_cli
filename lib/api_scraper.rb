require 'open-uri'
require 'nokogiri'
require 'net/http'
require 'json'
#require 'httparty'

class Scraper
  def self.get_films
    data = open("https://ghibliapi.herokuapp.com/films")
    JSON.parse(data)
  end
end

#:title, :release_date, :producer, :rt_score, :description