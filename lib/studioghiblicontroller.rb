require_relative "../lib/film.rb"
require_relative "../lib/api_scraper.rb"

class StudioGhibliController
  
  attr_reader :title, :release_date, :producer, :rt_score, :description
  
  
  def call
    input = ''
    while input != 'exit'
    puts "Welcome to the Studio Ghibli Movie Generator!"
    puts "To list all Studio Ghibli films, enter 'list films'."
    puts "To see information about a film, enter a films name from the list above."
    puts "To generate a random film suggestion, enter 'random'."
    puts "To quit, type 'exit'."
    puts "To get started, enter 'list films' or 'random'."
    input = gets.chomp
      case input
      when 'list films'
        list_films
      when "#{title}"
        film_info
      when 'random'
        generate_random_film
        puts "Might we suggest this film. Grab some popcorn!"
      end
    end
  end
  
  def list_films
    Film.all.sort { |a, b| a.name <=> b.name }.each.with_index(1) do |title, index|
      puts "#{index}. #{title}"
      puts "Enter a film name for its information"
    end
  end
  

  def film_info
    #Film.all.each do |film|
      puts " title: " "#{film.title.upcase}"
      puts "  release_date:"  " #{film.release_date}"
      puts "  producer:"  " #{film.producer}"
      puts "  rt_score:"  " #{film.rt_score}"
      puts "  description:"  " #{film.description}"
      puts "To generate a random film suggestion, enter 'random'."
    end
  end
  
    
  def generate_random_film
    Film.all.sample
    puts "#{film.title}"
  end