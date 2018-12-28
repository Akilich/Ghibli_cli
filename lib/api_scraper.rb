#!/usr/bin/env ruby
require_relative "../lib/film.rb"
require 'nokogiri'
require 'open-uri'
require 'net/http'
require 'rubygems'
require 'json'
require 'pry'

class Scraper
    def get_film
      Nokogiri::HTML(open("https://ghibliapi.herokuapp.com/films"))
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
 end