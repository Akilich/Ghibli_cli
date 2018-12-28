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


  def choose_films
  self.get_films
  end

  def make_films
  self.get_films.each do |film|
    film = Film.new
    film.title = ("title").text.strip
    film.release_date = ("release_date").text.strip
    film.director = ("director").text.strip
    film.rt_score = ("rt_score").text.strip
    film.description = ("description").text.strip
  end
end
end