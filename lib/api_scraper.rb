require_relative "../lib/film.rb"

require 'net/http'
require 'uri'

class Scraper
    def get_films
      uri = URI.parse("https://ghibliapi.herokuapp.com/films")
      request = Net::HTTP::Get.new(uri)
      request.content_type = "application/json"

    req_options = {
    use_ssl: uri.scheme == "https",
    }

      response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(request)
    end

# response.code
# response.body
    
  Film.get_films.map do |film_hash|
  Film.new(film_hash)
end
    
    def make_films
      self.get_films.each do |text|
        film=Film.new
        film.title=("title").text
      end
    end
        
    def print_films
      self.make_films
      Film.all.each do |film|
        if course.title 
          puts "Title: #{film.title}"
        end
      end
    end
  end
end