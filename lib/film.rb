require_relative "../lib/api_scraper.rb"
require_relative "../lib/studioghiblicontroller.rb"


class Film
  @@all = []
  attr_accessor :title, :release_date, :producer, :rt_score, :description

  def initialize
    @title = title
    @release_date = release_date
    @producer = producer
    @rt_score = rt_score
    @description = description
    @@all << self
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