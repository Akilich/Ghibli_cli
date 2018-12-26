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
    puts "You can generate a random Studio Ghibli film by typing its producer."
    puts "To list all film producers, enter 'list producers'."
    puts "To generate a random film by producer, enter the name of the producer."
    puts "To quit, type 'exit'."
    puts "To get started, enter 'list films' or 'list producers'."
    input = gets.chomp
      case input
      when 'list films'
        list_films
      when 'list producers'
        list_producers
      when 'producer name'
        generate_from_producer
      end
    end
  end
  
  def list_films
   Film.all
  end
  
  def list_producers
    Producer.all
    puts "Enter a producer from the list:"
    @@all.map{ |producer| producer.name }
  end
    
  def generate_from_producer
    puts film_info
  end


end