#CLI controller
class StudioGhibliController
  
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
    puts <<-DOC
    Enter a producer from the list:
      Isao Takahata, Toru Hara, Hayao Miyazaki, Toshio Suzuki, Nozomu Takahashi, Yoshiaki Nishimura, Seiichiro Ujiie
    DOC
  end
  
  
  def generate_from_producer
    puts film_info
  end


end