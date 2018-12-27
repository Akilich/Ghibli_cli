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
    data = open("https://ghibliapi.herokuapp.com/films")
    JSON.parse(data)
  end
      
  binding.pry
  #title = http.request("title")
  #release_date = http.request("release_date").text
  #producer = http.request("producer").text
  #rt_score = http.request("rt_score").text
  #description = http.request("description").text
end