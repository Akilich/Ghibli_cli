#CLI controller
class StudioGhibliController
  
  attr_reader :producer
  
  def initialize
    @producer = producer
    importer_obj = Producer.new(name)
    importer_obj.import
  end
  
  def call
    input = ''
    while input != 'exit'
    puts "Welcome to the Studio Ghibli Movie Generator!"
    puts "You can generate a random Studio Ghibli film by its producer."
    puts "To list all film producers, enter 'list producers'."
    puts "To generate a random film by producer, enter the name of the producer."
    input = gets.chomp
      case input
      when 'list producers'
        list_producers
      when 'producer name'
        generate_from_producer
      end
    end
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