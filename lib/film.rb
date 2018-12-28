require_relative "../lib/api_scraper.rb"
require_relative "../lib/studioghiblicontroller.rb"


class Film
  @@all = []
  attr_accessor :title
  
  def initialize
    @title = title
    @@all << self
    @@all = []
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
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