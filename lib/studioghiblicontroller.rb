require_relative "../lib/film.rb"
require_relative "../lib/api_scraper.rb"

require 'pry'

class StudioGhibliController

  attr_reader :film , :title

  def call
    list_films
    menu
    goodbye
  end



     # when 'list films'
     #   list_films

  end

  def list_films
    puts "Welcome to the Studio Ghibli Movie Generator!"
    #-here doc - https://ghibliapi.herokuapp.com/films
    puts "-All Studio Ghibli Films-"
    puts <<-DOC
          "Castle in the Sky", "My Neighbor Totoro", "Kiki's Delivery Service", "Only Yesterday", "Porco Rosso", "Pom Poko", "Whisper of the Heart", "Princess Mononoke", "My Neighbors the Yamadas", "Spirited Away", "The Cat Returns", "Howl's Moving Castle", "Tales from Earthsea", "Ponyo", "Arrietty", "From Up on Poppy Hill", "The Wind Rises", "The Tale of the Princess Kaguya", "When Marnie Was There"
          DOC
        end


  def menu
    puts "To quit, type 'exit'."
    input = ''
    while input != 'exit'
    puts "To see information about a film, enter a film title from the list above."
    puts "To generate a random film suggestion, enter 'random'."
    input = gets.chomp
      case input
       when "film"
        film_info
       when 'random'
        generate_random_film
        puts "Ah, a classic! Grab some popcorn, you're in for a treat."
      end
    end
  end

def goodbye
  puts "See you next time!"
end

  def film_info
    Film.all.each do |film|
      puts " title: " "#{film.title.upcase}"
      puts "  release_date:"  " #{film.release_date}"
      puts "  producer:"  " #{film.producer}"
      puts "  rt_score:"  " #{film.rt_score}"
      puts "  description:"  " #{film.description}"
      puts "To generate a random film suggestion, enter 'random'."
    end

  def generate_random_film
    Film.all.sample
    puts "#{film.title}"
   end
  end