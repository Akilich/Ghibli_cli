#!/usr/bin/env ruby

require 'nokogiri'
require 'open-uri'
require 'net/http'
require 'rubygems'
require 'json'


class Scraper
  def get_films
    data = open("https://ghibliapi.herokuapp.com/films").read
    JSON.parse(data)
  end
end