require 'rspec'
require 'party'
require 'rep'

describe Party do

  it "initalizes with an empty array" do
    test_party = Party.new
    expect(test_party).to be_an_instance_of Party
  end

  it "initalizes with a blank array of parties" do
    test_party = Party.new
    expect(test_party.parties).to eq []
  end

  it "will add a party to the array of parties" do
    test_party = Party.new
    test_party.add_party("republican")
    expect(test_party.parties).to eq ["republican"]
  end

  it "will list the members of a selected party" do
    test_party = Party.new
    test_party.add_party("democrate")
    test_rep = Rep.new("bob")
    test_rep.set_party("democrate")
    expect(test_party.list_members("democrate")).to eq [test_rep]
  end
end
