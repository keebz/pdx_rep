require 'rspec'
require 'rep'
require 'party'
require 'pry'

describe Rep do

  it "initalizes with a reps name" do
    test_rep = Rep.new("bob")
    expect(test_rep).to be_an_instance_of Rep
  end

  it "initalizes a reps name for the rep" do
    test_rep = Rep.new("bob")
    expect(test_rep.name).to eq "bob"
  end

  it "adds a party for the rep" do
    test_rep = Rep.new("bob")
    test_rep.set_party("democrate")
    expect(test_rep.party).to eq "democrate"
  end

  it "defines the type or representitive a rep is" do
    test_rep = Rep.new("bob")
    test_rep.set_rep_type("senator")
    expect(test_rep.type).to eq "senator"
  end

  it "creates an array of all the reps" do
    test_rep = Rep.new("bob")
    test_rep.set_party("democrate")
    test_rep.set_rep_type("senator")
    expect(Rep.all).to eq ["bob"]
  end
end
