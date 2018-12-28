require_relative "../lib/api_scraper.rb"
require_relative "../lib/studioghiblicontroller.rb"
require 'pry'

class Film
  @@all = []
  attr_accessor :title, :release_date, :director, :rt_score, :description
  
  def initialize(title_hash)
    title_hash.each do |method,arg|
      if self.respond_to?("#{method}=")
        self.send("#{method}=",arg) 
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
end

  