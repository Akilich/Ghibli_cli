require_relative "../spec/spec_helper.rb"
require_relative "../lib/api_scraper.rb"

describe "Scraper" do

  let(:scraper) {Scraper.new}

  describe "#get_films" do
    it "uses nokogiri to get the HTML from a web page" do
      doc = Nokogiri::HTML(open("https://ghibliapi.herokuapp.com/films"))
      expect{scraper.get_films}.to_not raise_error
      expect(doc).to be_a(Nokogiri::HTML::Document)
    end
  end
end