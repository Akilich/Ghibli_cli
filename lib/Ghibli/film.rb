class Film
  attr_accessor :title, :release_date, :producer, :rt_score, :description
  def initialize(film_hash)
     @title = film_hash["title"]
     @release_date = film_hash["release_date"]
     @uproducer = film_hash["producer"]
     @rt_score = film_hash["rt_score"]
     @description = film_hash["description"]
    show_hash.each do |method, arg|
      if self.respond_to?("#{method}=")
        self.send("#{method}=", arg)
      end
    end
  end
end

Scraper.get_films.map do |film_hash|
  Film.new(film_hash)
end