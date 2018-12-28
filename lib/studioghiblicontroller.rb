require_relative "../lib/film.rb"
require_relative "../lib/api_scraper.rb"

require 'pry'

class StudioGhibliController

  attr_reader :film , :title

  def call
    puts "Welcome to the Studio Ghibli Movie Generator!"
    list_films
    menu
    goodbye
  end



     # when 'list films'
     #   list_films

  end

  def list_films
    #-here doc - https://ghibliapi.herokuapp.com/films
    puts "-All Studio Ghibli Films-"
# @films=StudioGhibliController::Film.all
# there is an object called Film with a class method called all and should return a bunch of films (@films)
        end


  def menu
    puts "To quit, type 'exit'."
    input = ''
    while input != 'exit'
    puts "To see information about a film, enter a film title from the list above."
    puts "To generate a random film suggestion, enter 'random'."
    puts "To see the film list again, type 'list films'"
    input = gets.chomp
      case input
       when "list films"
        list_films
       when 'random'
        generate_random_film
        puts "Ah, a classic! Grab some popcorn, you're in for a treat."
      else
        puts "What was that? Type a film title, 'list films', or 'exit'"
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