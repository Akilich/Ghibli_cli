class StudioGhibliController 
  
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
    input = nil
    while input != 'exit'
    puts "To see information about a film, enter the film title number from the list above."
    puts "To generate a random film suggestion, enter 'random'."
    puts "To see the film list again, type 'list films'"
    puts "To quit, type 'exit'."
    input = gets.chomp
    
    if input.to_i > 0
      the_film = @films[input.to_i-1] 
      puts "#{i}. #{film.title}"
    else input == "list films"
      list_films
      case input
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
end