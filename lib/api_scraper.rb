require_relative "../lib/film.rb"

require 'open-uri'
require 'nokogiri'
require 'net/http'
require 'json'
#require 'httparty'

class Scraper
    def self.get_films
      #film_information = open("https://ghibliapi.herokuapp.com/films").read
      #JSON.parse(film_information)
      Nokogiri::HTML(open("https://ghibliapi.herokuapp.com/films"))
      film_information = Nokogiri::HTML#(html)
    end
    
    def get_film_title
      self.get_films
    end
    
    def make_films
      self.get_film_title.each do |text|
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


#:title, :release_date, :producer, :rt_score, :description