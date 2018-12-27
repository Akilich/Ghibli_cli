#CLI controller
class StudioGhibliController
  
  attr_reader :film , :producer
  
  def initialize
    @film = film
  end
  
  def call
    input = ''
    while input != 'exit'
    puts "Welcome to the Studio Ghibli Movie Generator!"
    puts "To list all Studio Ghibli films, enter 'list films'."
    puts "To see more information about the film, enter the films name."
    puts "To generate a random film suggestion, enter 'random'."
    puts "To quit, type 'exit'."
    puts "To get started, enter 'list films' or 'random'."
    input = gets.chomp
      case input
      when 'list films'
        list_films
      when "#{film.name}"
        film_info
      when 'random'
        generate_random_film
      end
    end
  end
  
  def list_films
   Film.all
   puts "Enter a film name for the film information"
  end
  
  def film_info
    Film.all.each do |film|
      puts "#{film.name.upcase}"
      puts "  location:"  " #{film.location}"
      puts "  profile quote:"  " #{film.profile_quote}"
      puts "  bio:"  " #{film.bio}"
      puts "  twitter:"  " #{film.twitter}"
      puts "  linkedin:"  " #{student.linkedin}"
    end
  end
  
    
  def generate_random_film
    [].sample
  end


end