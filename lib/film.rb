require_relative "../lib/api_scraper.rb"
require_relative "../lib/studioghiblicontroller.rb"
require 'pry'

class Film
  @@all = []
  attr_accessor :title, :release_date, :director, :rt_score, :description
  
  def initialize
    @title = title
    @@all << self
  end

  def self.all
     #puts <<-DOC
     #     "Castle in the Sky", "Grave of the Fireflies", "My Neighbor Totoro", "Kiki's Delivery Service", "Only Yesterday", "Porco Rosso", "Pom Poko", "Whisper of the Heart", "Princess Mononoke", "My Neighbors the Yamadas", "Spirited Away", "The Cat Returns", "Howl's Moving Castle", "Tales from Earthsea", "Ponyo", "Arrietty", "From Up on Poppy Hill", "The Wind Rises", "The Tale of the Princess Kaguya", "When Marnie Was There"
     #     DOC
    film_1 = self.new
    film_1.title = "Castle in the Sky"
    film_1.release_date = "1986"
    film_1.director = "Hayao Miyazaki"
    film_1.rt_score = "95"
    film_1.description = "The orphan Sheeta inherited a mysterious crystal that links her to the mythical sky-kingdom of Laputa. With the help of resourceful Pazu and a rollicking band of sky pirates, she makes her way to the ruins of the once-great civilization. Sheeta and Pazu must outwit the evil Muska, who plans to use Laputa's science to make himself ruler of the world."
    
    film_2 = self.new
    film_2.title = "Grave of the Fireflies"
    film_2.release_date = "1988"
    film_2.director = "Isao Takahata"
    film_2.rt_score = "97"
    film_2.description = "In the latter part of World War II, a boy and his sister, orphaned when their mother is killed in the firebombing of Tokyo, are left to survive on their own in what remains of civilian life in Japan. The plot follows this boy and his sister as they do their best to survive in the Japanese countryside, battling hunger, prejudice, and pride in their own quiet, personal battle."
    [film_1, film_2]
    
    
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