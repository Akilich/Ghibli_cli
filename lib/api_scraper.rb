#require 'nokogiri'
#require 'open-uri'
#require 'net/http'
#require 'rubygems'
#require 'json'


class FilmAPI
  def get_films
    data = open("https://ghibliapi.herokuapp.com/films").read
    JSON.parse(data)
  end
end