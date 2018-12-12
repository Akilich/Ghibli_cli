class Film
 
  attr_accessor :title, :release_date, :producer, :rt_score, :description
 
  @@all = []
 
  def initialize
    @@all << self
  end
 
  def self.all
    @@all
  end
 
  def self.reset_all
    @@all.clear
  end
 
end