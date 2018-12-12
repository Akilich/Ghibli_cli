#!/usr/bin/env ruby
require_relative "spec_helper"
require_relative "./lib/producer.rb"

describe "Producer" do

  let!(:takahata) { Producer.new("Isao Takahata") }
  

  after(:each) do
    Producer.class_variable_set(:@@all, [])
  end

  describe "Producer class variables" do
    it "has a class variable, @@all, the points to an array" do
      expect(Producer.class_variable_get(:@@all)).to be_a(Array)
    end
  end

  describe ".clear_all" do
    it "is a class method that empties the @@all array of all existing dogs" do
      Producer.clear_all
      expect(Producer.class_variable_get(:@@all)).to match([]  )
    end
  end

  describe ".all" do
    it "is a class method that puts out the name of each producer to the terminal" do
      expect{Producer.all}.to output("Isao Takahata\nToru Hara\nHayao Miyazaki\n").to_stdout
    end
  end

  describe ".new" do
    it "initializes with an argument of a name" do
      expect{Producer.new("Isao Takahata")}.to_not raise_error
    end
    it "adds the new dog to the @@all array" do
      expect(Producer.class_variable_get(:@@all)).to match([takahata, hara, miyazakiy])
    end
  end

  describe "#name" do
    it "has a name" do
      expect(takahata.name).to eq("Isao Takahata")
    end
  end
end