require_relative "../spec/spec_helper.rb"
require_relative "../lib/api_scraper.rb"

describe "Scraper" do

  let(:scraper) {Scraper.new}

  describe "#get_films" do
    it "uses open-uri to get the films array from a web page" do
      data = scraper.get_films
      expect{scraper.get_films}.to_not raise_error
      expect(data).to be_a(JSON)
    end
  end
  
  