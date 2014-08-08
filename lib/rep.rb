class Rep
  attr_reader:name,:party

  def initialize(name)
    @name = name
  end

  def set_party(party)
    @party = party
  end
end
