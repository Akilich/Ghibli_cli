require 'net/http'
require 'json'

class Scraper
  
  def self.get_films
  url = 'https://ghibliapi.herokuapp.com/films'
  uri = URI(url)
  response = Net::HTTP.get(uri)
  JSON.parse(response)
  end
end

