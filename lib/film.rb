require_relative "../lib/api_scraper.rb"
require_relative "../lib/studioghiblicontroller.rb"


class Film
  @@all = [ ]
  
  attr_accessor :title, :release_date, :producer, :rt_score, :description
  
  def initialize(film_hash)
     @@all << self
     @title = film_hash["title"]
     #@release_date = release_date
     #@producer = producer
     #@rt_score = rt_score
     #@description = description
  end
  
  def self.create_films(films_array)
    films_array.each do |film|
      new(film)
    end
  end
  
  def add_film_attributes(attributes_hash)
    attirubtes_hash.each do |attribute_key, attribute_value|
      send("#{attribute_key}=", attribute_value)
    end
  end
  
  
  def self.all
    @@all
  end
  
end