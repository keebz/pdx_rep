require 'rep'

class Party
  attr_reader:parties

  def initialize
    @parties = []
  end

  def add_party(party)
    @parties << party
  end

  def list_members(party)
    party.downcase!
    members = []
    Rep.list.each do |rep|
      if rep.party == party
        members << rep
      end
    end
    members
  end

end
