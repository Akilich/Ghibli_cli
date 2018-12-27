require 'open-uri'
require 'net/http'
require 'json'

class Scraper
  def self.get_films
    data= open('https://ghibliapi.herokuapp.com/films').read
   JSON.parse(data)
  
  puts data('title').text
  puts data('release_date').text
  puts data('producer').text
  puts data('rt_score').text
  puts data('description').text
  end
end