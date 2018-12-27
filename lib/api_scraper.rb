#!/usr/bin/env ruby
require_relative "../lib/film.rb"
require 'nokogiri'
require 'open-uri'
require 'net/http'
require 'rubygems'
require 'json'
require 'pry'

class Scraper
    def self.get_films
    doc = Nokogiri::HTML(open("https://ghibliapi.herokuapp.com/films"))
    title = doc.search("title").text
    end
end    
  
class Film
     attr_accessor :title, :release_date, :producer, :rt_score, :description
  def initialize(title_hash)
    title_hash.each do |method,arg|
      if self.respond_to?("#{method}=")
        self.send("#{method}=",arg) 
      end   
     end
   end
 end

  api = Scraper.new(title_hash)
  results = api.get_films.map do |title_hash|
    Film.new(title_hash)
  end