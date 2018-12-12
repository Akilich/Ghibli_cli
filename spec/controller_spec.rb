require "spec_helper"

describe "StudioGhibliController" do
  describe "#initialize" do
    it "accepts one argument, producer to be imported" do
      expect{ StudioGhibliController.new("./lib/Ghibli_cli/api_scraper") }.to_not raise_error
    end

    it "creates a new Scraper object, passing in the 'path' value" do
      expect(Scraper).to receive(:new).with("./spec/fixtures/mp3s").and_return(double(Scraper, import: true))

      StudioGhibliController.new("./spec/fixtures/mp3s")
    end

    it "the 'path' argument defaults to './db/mp3s'" do
      expect(Scraper).to receive(:new).with("./db/mp3s").and_return(double(Scraper, import: true))

      StudioGhibliController.new
    end

    it "invokes the #import method on the created Scraper object" do
      scraper = Scraper.new("./spec/fixtures/mp3s")

      expect(Scraper).to receive(:new).and_return(scraper)
      expect(scraper).to receive(:import)

      StudioGhibliController.new
    end
  end

  describe "#call" do
    let(:studio_ghibli_controller) { StudioGhibliController.new("./spec/fixtures/mp3s") }

    it "welcomes the user" do
      allow(studio_ghibli_controller).to receive(:gets).and_return("exit")

      expect($stdout).to receive(:puts).with("Welcome to the Studio Ghibli Movie Generator!")
      expect($stdout).to receive(:puts).with("You can generate a random Studio Ghibli film by its producer.")
      expect($stdout).to receive(:puts).with("To list all film producers, enter 'list producers'.")
      expect($stdout).to receive(:puts).with("To list all of the genres in your library, enter 'list genres'.")
      expect($stdout).to receive(:puts).with("To list all of the songs by a particular artist, enter 'list artist'.")
      expect($stdout).to receive(:puts).with("To list all of the songs of a particular genre, enter 'list genre'.")
      expect($stdout).to receive(:puts).with("To play a song, enter 'play song'.")
      expect($stdout).to receive(:puts).with("To quit, type 'exit'.")
      expect($stdout).to receive(:puts).with("What would you like to do?")

      studio_ghibli_controller.call
    end

    it "asks the user for input" do
      allow(studio_ghibli_controller).to receive(:gets).and_return("exit")

      expect(studio_ghibli_controller).to receive(:gets)

      capture_puts { studio_ghibli_controller.call }
    end

    it "loops and asks for user input until they type in exit" do
      allow(studio_ghibli_controller).to receive(:gets).and_return("a", "b", "c", "exit")

      expect(studio_ghibli_controller).to receive(:gets).exactly(4).times

      capture_puts { studio_ghibli_controller.call }
    end
  end
end
