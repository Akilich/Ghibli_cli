
require 'pry'

class Film
  @@all = []
  attr_accessor :title, :release_date, :director, :rt_score, :description
  
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

  