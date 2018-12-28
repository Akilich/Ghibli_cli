require_relative "../lib/film.rb"
require_relative "../lib/api_scraper.rb"

require 'pry'

class StudioGhibliController < Film

#Scraper.get_films

  def call
    puts "Welcome to the Studio Ghibli Movie Generator!"
    list_films
    menu
    goodbye
  end
end

  def list_films
    puts "-All Studio Ghibli Films-"
    @films = Film.all
    @films.each.with_index do |film, i|
      puts "#{i}. #{film.title}"
    end
  end
        # @films=StudioGhibliController::Film.all
        # there is an object called Film with a class method called all and should return a bunch of films (@films)


  def menu
    puts "To quit, type 'exit'."
    input = ''
    while input != 'exit'
    puts "To see information about a film, enter a film title from the list above."
    puts "To generate a random film suggestion, enter 'random'."
    puts "To see the film list again, type 'list films'"
    input = gets.chomp
      case input
      when "film title"
        film_info
       when "list films"
        list_films
       when 'random'
        generate_random_film
        puts "Ah, a classic! Grab some popcorn, you're in for a treat."
      #else
      #  puts "What was that? Type a film title, 'list films', or 'exit'"
      #end
    end
  end
end

def goodbye
  puts "See you next time!"
end

  def film_info
    Film.all.each do |film|
      puts " title: " "#{film.title}"
      puts "  release_date:"  " #{film.release_date}"
      puts "  director:"  " #{film.director}"
      puts "  rt_score:"  " #{film.rt_score}"
      puts "  description:"  " #{film.description}"
      puts "To generate a random film suggestion, enter 'random'."
    end

  def generate_random_film
    Film.all.sample
    puts "#{film.title}"
   end
  end