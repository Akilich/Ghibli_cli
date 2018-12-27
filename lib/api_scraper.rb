require 'open-uri'
require 'net/http'
require 'json'

class Scraper
  def self.get_films
    data = open('https://ghibliapi.herokuapp.com/films').read
   JSON.parse(data)
  
 film_information = ("title, release_date, producer, rt_score, description")
  end
end

#:title, :release_date, :producer, :rt_score, :description