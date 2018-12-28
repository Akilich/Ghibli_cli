require_relative '../lib/version.rb'

RSpec.describe "Ghibli_cli" do
  it "has a version number" do
    expect(Controller::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
