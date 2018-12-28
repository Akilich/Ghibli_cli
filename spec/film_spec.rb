require_relative "./spec_helper.rb"
require_relative "../lib/film.rb"

describe "Film" do

  let(:film) {Film.new}


 # context "instance methods" do
    


  context "class methods" do
    describe "#title" do
      it "has a setter and a getter method for title" do
        film.title = "Castle in the Sky"
        expect(film.title).to eq("Castle in the Sky")
      end
    end
  
  describe "@@all" do
    it "is initialized as an empty array" do
      all = Film.class_variable_get(:@@all)

      expect(all).to match_array([])
    end
  end

  describe ".all" do
    it "returns an array of all the instances of the Film class" do
      expect(Film.all).to match_array([film])

     Film.class_variable_set(:@@all, [film])

      expect(Film.all).to match_array([film])
    end
  end
    
    
    #describe ".all" do
    #  it "returns an array of all the instances of the Film class" do
    #    film_one = Film.new
    #    film_two = Film.new
    #    film_three = Film.new
    #    expect(Film.all).to match_array(["Castle in the Sky", "My Neighbor Totoro", "Kiki's Delivery Service", "Only Yesterday", "Porco Rosso", "Pom Poko", "Whisper of the Heart", "Princess Mononoke", "My Neighbors the Yamadas", "Spirited Away", "The Cat Returns", "Howl's Moving Castle", "Tales from Earthsea", "Ponyo", "Arrietty", "From Up on Poppy Hill", "The Wind Rises", "The Tale of the Princess Kaguya", "When Marnie Was There"])
    #  end
  #  end
  end
end