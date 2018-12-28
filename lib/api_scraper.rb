#!/usr/bin/env ruby
require_relative "../lib/film.rb"
require 'nokogiri'
require 'open-uri'
require 'net/http'
require 'rubygems'
require 'json'


class Scraper
    def get_film
      Nokogiri::HTML(open("https://ghibliapi.herokuapp.com/films"))
    end
 

class Film
     attr_accessor :title
  def initialize(title_hash)
    title_hash.each do |title,arg|
      if self.respond_to?("#{title}=")
        self.send("#{title}=",arg) 
      end   
     end
   end
 end
 
 
  api = Scraper.new
    results = api.get_film.map do |title_hash|
      Film.new(title_hash)
  end
end