require_relative "../lib/api_scraper.rb"

class Film
  @@all = [ ]
  
  attr_accessor :title, :release_date, :producer, :rt_score, :description
  
  def initialize(film_hash)
     @@all << self
     @title = film_hash["title"]
     @release_date = film_hash["release_date"]
     @uproducer = film_hash["producer"]
     @rt_score = film_hash["rt_score"]
     @description = film_hash["description"]
  end   
  
  def self.all
    @@all
  end
  
  def make_films
    self.film_hash.each do |text, arg|
      if self.respond_to?("#{text}=")
        self.send("#{text}=", arg)
      end
    end
  end
end