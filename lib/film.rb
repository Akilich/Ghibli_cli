require_relative "../lib/api_scraper.rb"
require_relative "../lib/studioghiblicontroller.rb"
require 'json'

class Film
  @@all = [ ]
  
  attr_accessor :title, :release_date, :producer, :rt_score, :description
  
  def initialize(film_hash)
     @@all << self
    # @id = show_hash["id"]
    # @name = show_hash["name"]
    # @url = show_hash["url"]
    # @genres = show_hash["genres"]
    film_hash.each do |method, arg|
      if self.respond_to?("#{method}=")
        self.send("#{method}=", arg)
      end
    end
  end
  end   
  
  def self.all
    @@all
  end
  
  def self.save
    @@all << self
  end

  def self.create(title)
    film = self.new(title)
    @@all << self
    film
  end
  
  def find_by_title(title)
        self.all.find{|film| film.title == title}
  end

