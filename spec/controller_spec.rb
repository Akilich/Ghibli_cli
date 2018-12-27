require "spec_helper"
require_relative "../lib/studioghiblicontroller.rb"

describe "StudioGhibliController" do
  describe "#initialize" do
    it "accepts five arguments, to be imported" do
      expect{ StudioGhibliController.new("./lib/api_scraper") }.to_not raise_error
    end
  end

  describe "#call" do
    let(:studio_ghibli_controller) { StudioGhibliController.new("./lib/api_scraper") }

    it "welcomes the user" do
      allow(studio_ghibli_controller).to receive(:gets).and_return("exit")

      expect($stdout).to receive(:puts).with("Welcome to the Studio Ghibli Movie Generator!")
      expect($stdout).to receive(:puts).with("To list all Studio Ghibli films, enter 'list films'.")
      expect($stdout).to receive(:puts).with("To see information about a film, enter a films name from the list above.")
      expect($stdout).to receive(:puts).with("To generate a random film suggestion, enter 'random'.")
      expect($stdout).to receive(:puts).with("To quit, type 'exit'.")
      expect($stdout).to receive(:puts).with("To get started, enter 'list films' or 'random'.")
     
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
