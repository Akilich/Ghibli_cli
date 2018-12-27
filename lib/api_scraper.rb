require_relative "../lib/film.rb"

require 'net/http'
require 'uri'

class Scraper
    def self.get_films
      uri = URI.parse("https://ghibliapi.herokuapp.com/films")
      request = Net::HTTP::Get.new(uri)
      request.content_type = "application/json"

      req_options = {
      use_ssl: uri.scheme == "https",
      }

      response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(request)
    end
  end
end

def self.make_films_from_page
  uri = URI.parse("https://ghibliapi.herokuapp.com/films")
      request = Net::HTTP::Get.new(uri)
      request.content_type = "application/json"

    req_options = {
    use_ssl: uri.scheme == "https",
    }

      response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(request)
    film = { }
  end
  
  film[:title] = http.request("title")
  film[:release_date] = http.request("release_date").text
  film[:producer] = http.request("producer").text
  film[:rt_score] = http.request("rt_score").text
  film[:description] = http.request("description").text

end
