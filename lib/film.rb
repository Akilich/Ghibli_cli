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
     puts <<-DOC
          "Castle in the Sky", "My Neighbor Totoro", "Kiki's Delivery Service", "Only Yesterday", "Porco Rosso", "Pom Poko", "Whisper of the Heart", "Princess Mononoke", "My Neighbors the Yamadas", "Spirited Away", "The Cat Returns", "Howl's Moving Castle", "Tales from Earthsea", "Ponyo", "Arrietty", "From Up on Poppy Hill", "The Wind Rises", "The Tale of the Princess Kaguya", "When Marnie Was There"
          DOC
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