#require 'open-uri'
#require 'net/http'
#require 'json'
require 'httparty'

class Scraper
  def self.get_films
    #data = open('https://ghibliapi.herokuapp.com/films').read
   #JSON.parse(data)
  response = HTTParty.get('https://ghibliapi.herokuapp.com/films')
  standard = JSON.parse(response.to_json)
  end
end

#:title, :release_date, :producer, :rt_score, :description