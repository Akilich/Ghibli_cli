#CLI controller
class StudioGhibliController
  
  def call
    input = ''
    while input != 'exit'
    puts "Welcome to the Studio Ghibli Movie Generator!"
    puts "You can generate a random Studio Ghibli film by its producer or Rotten Tomatoes score."
    puts "To list all film producers, enter 'list producers'."
    puts "To list all Rotten Tomatoes scores, enter 'list RT scores'."
    puts "To generate a random film by producer, enter the name of the producer."
    puts "To generate a random film by Rotten Tomatoes score, enter the score."
    puts "To quit, type 'exit'."
    puts "To get started, enter the list you wish to see."
    input = gets.chomp
      case input
      when 'list producers'
        list_producers
        when 'list RT scores'
        list_rt_scores
      when 'producer name'
        generate_from_producer
      when 'score'
        generate_from_score
      end
    end
  end
  
  def list_producers
    puts <<-DOC
    Enter a producer from the list:
      Isao Takahata, Toru Hara, Hayao Miyazaki, Toshio Suzuki, Nozomu Takahashi, Yoshiaki Nishimura, Seiichiro Ujiie
    DOC
  end
  
  def list_rt_scores
    puts <<-DOC
    Enter a Rotten Tomatoe score from the list:
      41, 75, 78, 83, 87, 89, 90
      92, 93, 94, 95, 97, 100
    DOC
  end

  def generate_from_producer
    puts film_info
  end

  def generate_from_score
    puts film_info
  end

end