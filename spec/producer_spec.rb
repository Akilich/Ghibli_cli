require "spec_helper"

describe "Producer" do
  let(:producer) { Producer.new("Isao Takahata") }

  describe "#initialize" do
    it "accepts a name for the producer" do
      new_producer = Producer.new("Isao Takahata")

      new_producer_name = new_producer.instance_variable_get(:@name)

      expect(new_producer_name).to eq("Isao Takahata")
    end
  end

  describe "#name" do
    it "retrieves the name of a producer" do
      expect(producer.name).to eq("Isao Takahata")
    end
  end

  describe "#name=" do
    it "can set the name of a producer" do
      producer.name = "Isao Takahata"

      producer_name = producer.instance_variable_get(:@name)

      expect(producer_name).to eq("Isao Takahata")
    end
  end