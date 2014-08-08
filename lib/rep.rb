class Rep
  attr_reader:name,:party, :type

  def initialize(name)
    @name = name
  end

  def set_party(party)
    @party = party
  end

  def set_rep_type(type)
    @type = type
  end
end
