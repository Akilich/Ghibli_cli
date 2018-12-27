require 'open-uri'
require 'nokogiri'
require 'net/http'
require 'json'
#require 'httparty'

class Scraper
    def self.get_films
      #film_information = open("https://ghibliapi.herokuapp.com/films").read
      #JSON.parse(film_information)
      Nokogiri::HTML(open("https://ghibliapi.herokuapp.com/films"))
      film_information = Nokogiri::HTML#(html)
      films ={ }
      
    
    self.get_films.each do |film|
    title = film("title").text
    projects[title.to_sym] = {
      :release_date => film("release_date").attribute("src").value,
      :producer => film("producer").text,
      :rt_score => film("rt_score").text,
      :descr=> film("description").text
    }
    end
  
    films
  end
end


#:title, :release_date, :producer, :rt_score, :description