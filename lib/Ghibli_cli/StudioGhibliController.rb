#CLI controller
class StudioGhibliController
  
  def call
    input = ''
    while input != 'exit'
    puts "Welcome to the Studio Ghibli Movie Generator!"
    puts "You can generate a random Studio Ghibli film by its producer or Rotten Tomatoes score."
    puts "To list all film producers, enter 'list producers'."
    puts "To list all Rotten Tomatoes scores, enter 'list scores'."
    puts "To generate a random film by producer, enter the name of the producer."
    puts "To generate a random film by Rotten Tomatoes score, enter the score."
    puts "To quit, type 'exit'."
    puts "Enter a list to get started."
    input = gets.chomp
      case input
      when 'list producers'
        list_producers
        when 'list scores'
        list_scores
      when 'producer name'
        generate_from_producer
      when 'score'
        generate_from_score
      end
    end
  end
  
  
  
  def list_producers
    puts <<-DOC
    Enter a film year from the list to generate a Studio Ghibli film:
      1984, 1986, 1988, 1989, 1991, 1992, 1993, 1994,
      1995, 1997, 1999, 2000, 2001, 2002, 2004, 2006,
      2008, 2009, 2010, 2011, 2013, 2014, 2018
    DOC
  end
  
  def list_scores
  end

  def generate_from_producer
  end

  def generate_from_score
  end

end