require_relative "../lib/api_scraper.rb"
require 'json'

class Film
  @@all = [ ]
  
  attr_accessor :title, :release_date, :producer, :rt_score, :description
  
  def initialize(title, release_date=nil, producer=nil, rt_score=nil, description=nil)
     @@all << self
     @title=title
     self.release_date=(release_date) if release_date !=nil
     self.producer=(producer) if producer != nil
     self.rt_score=(rt_score) if rt_score !=nil
     self.description=(description) if description !=nil
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
  
  #def make_film
  # self.film.each do |method, arg|
  #    if self.respond_to?("#{method}=")
  #      self.send("#{method}=", arg)
  #    end
  #  end
  #end
end