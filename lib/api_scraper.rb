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
      
  