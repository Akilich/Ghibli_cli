require 'open-uri'

class Scraper
  
def self.get_films
    data = open("https://ghibliapi.herokuapp.com/films")
    JSON.parse(data)
  end
end