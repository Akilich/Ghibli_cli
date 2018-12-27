require_relative "../lib/api_scraper.rb"
require_relative "../lib/studioghiblicontroller.rb"


class Film
  @@all = [ ]
  
  attr_accessor :title, :release_date, :producer, :rt_score, :description
  
  def initialize(film_hash)
     @@all << self
     @title = film_hash["title"]
  end
  
  def self.all
    @@all
  end
  
end

