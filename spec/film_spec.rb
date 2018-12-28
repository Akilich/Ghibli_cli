require_relative "./spec_helper.rb"
require_relative "../lib/film.rb"

describe "Film" do
  let(:film) { Film.new("Castle in the Sky") }

  describe "#initialize" do
    it "accepts a title for the new film" do
      new_film = Film.new("My Neighbor Totoro")

      new_film_title = new_film.instance_variable_get(:@title)

      expect(new_film_title).to eq("My Neighbor Totoro")
    end
  end

  describe "#title" do
    it "retrieves the title of a film" do
      expect(film.title).to eq("Castle in the Sky")
    end
  end

  describe "#title=" do
    it "can set the title of a film" do
      film.title = "Kiki's Delivery Service"

      film_title = film.instance_variable_get(:@title)

      expect(film_title).to eq("Kiki's Delivery Service")
    end
  end

  describe "@@all" do
    it "is initialized as an empty array" do
      all = Film.class_variable_get(:@@all)

      expect(all).to match_array([])
    end
  end

  describe ".all" do
    it "returns the class variable @@all" do
      expect(Film.all).to match_array([])

      Film.class_variable_set(:@@all, [film])

      expect(Film.all).to match_array([film])
    end
  end

  describe ".destroy_all" do
    it "resets the @@all class variable to an empty array" do
      Film.class_variable_set(:@@all, [film])

      Film.destroy_all

      expect(Film.all).to match_array([])
    end
  end

  describe "#save" do
    it "adds the Film instance to the @@all class variable" do
      film.save

      expect(Film.all).to include(film)
    end
  end

  describe ".create" do
    it "initializes and saves the film" do
      created_film = Film.create("Fear of Tigers")

      expect(Film.all).to include(created_film)
    end
  end
end