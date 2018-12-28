#!/usr/bin/env ruby
require_relative "../lib/film.rb"
require 'nokogiri'
require 'open-uri'
require 'net/http'
require 'rubygems'
require 'json'


class Scraper

    def self.scrape_api
      films = []
      films << self.get_film
      film
    end
    
  def self.get_film
    Nokogiri::HTML(open("https://ghibliapi.herokuapp.com/films"))
      
      film = self.new
      film.title = doc.search("title").text.strip
      film.release_date = doc.search("release_date").text.strip
      film.director = doc.search("director").text.strip
      film.rt_score = doc.search("rt_score").text.strip 
      film.description = doc.search("description").text.strip
      film
    end
end
