#!/usr/bin/env ruby

require 'nokogiri'
require 'open-uri'
require 'net/http'
require 'rubygems'
require 'json'


class Scraper
  def self.get_films
    data = open("https://ghibliapi.herokuapp.com/films").read
    JSON.parse(data)
      #film.new[{}]
     # film.title = data.parse("title").text.strip
      #film.release_date = data.parse("release_date").text.strip
      #film.director = data.parse("director").text.strip
     # film.rt_score = data.parse("rt_score").text.strip 
      #film.description = data.parse("description").text.strip
  end
end

#class Film
#  def self.initialize(title_hash)
#    title_hash.each do |key,value|
#      if self.respond_to?("#{key}=")
#        self.send("#{key}=",value) 
#      end   
#     end
   
#  film_data = Scraper.new
#  results = film_data.get_films.map do |title_hash|
#  Film.new(title_hash)
#end
#end
#end









    #def self.open_films
    #  doc =
   # Nokogiri::HTML(open("https://ghibliapi.herokuapp.com/films"))
    
    #  film = self.new
    #  film.title = doc.search("title").text.strip
    #  film.release_date = doc.search("release_date").text.strip
    #  film.director = doc.search("director").text.strip
    #  film.rt_score = doc.search("rt_score").text.strip 
    #  film.description = doc.search("description").text.strip
    #  [film]

