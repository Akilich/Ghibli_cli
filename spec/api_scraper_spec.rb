require_relative "../spec/spec_helper.rb"
require_relative "../lib/api_scraper.rb"

describe "Scraper" do

  let(:scraper) {Scraper.new}

  describe "#get_film" do
    it "uses nokogiri to get the HTML from a web page" do
      doc = scraper.get_film
      expect{scraper.get_film}.to_not raise_error
      expect(doc).to be_a(Nokogiri::HTML::Document)
    end
  end
end