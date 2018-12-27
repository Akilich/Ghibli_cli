require_relative "../lib/api_scraper.rb"

class Film
  @@all = [ ]
  
  attr_accessor :title, :release_date, :producer, :rt_score, :description
  
  def initialize(title, release_date=nil, producer=nil, rt_score=nil, description=nil)
     @@all << self
     self.release_date=(release_date) if release_date !=nil
     self.producer=(producer) if producer != nil
     self.rt_score=(rt_score) if rt_score !=nil
     self.description=(description) if description !=nil
     @title=title
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
  
  def make_film
    self.film.each do |text, arg|
      if self.respond_to?("#{text}=")
        self.send("#{text}=", arg)
      end
    end
  end
end