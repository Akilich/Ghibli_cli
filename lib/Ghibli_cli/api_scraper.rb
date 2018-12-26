require 'Nokogiri'
require 'open-uri'
require_relative './lib/Ghibli_cli/film.rb'

class Scraper
  
attr_accessor :get_films
  
  def initialize
  Nokogiri::HTML(open("https://ghibliapi.herokuapp.com/films"))
  @get_films ||=Nokogiri::HTML(html)
  end
  
  def get_film_title
    get_films.text("title")
  end
  
  def get_film_release_date
    get_films.text("release_date")
  end
  
  def get_film_produce
    get_films.text("producer")
  end
  
  def get_film_rt_score
    get_films.text("rt_score")
  end
  
  def get_film_description
    get_films.text("description")
  end
  
  def make_film
    self.
end