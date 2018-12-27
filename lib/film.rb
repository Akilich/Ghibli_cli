require_relative "../lib/api_scraper.rb"

class Film
  @@all = [ ]
  
  attr_accessor :title, :release_date, :producer, :rt_score, :description
  
  def initialize(film_hash)
     @title = film_hash["title"]
     @release_date = film_hash["release_date"]
     @uproducer = film_hash["producer"]
     @rt_score = film_hash["rt_score"]
     @description = film_hash["description"]
     @@all << self
  
  def self.all
    @@all
  end
  
    film_hash.each do |method, arg|
      if self.respond_to?("#{method}=")
        self.send("#{method}=", arg)
      end
    end
  end
end