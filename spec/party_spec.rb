require 'rspec'
require 'party'
require 'rep'
require 'pry'

describe Party do

  it "initalizes with an empty array" do
    test_party = Party.new
    expect(test_party).to be_an_instance_of Party
  end

  it "initalizes with a blank array of parties" do
    test_party = Party.new
    expect(test_party.parties).to eq []
  end

end
