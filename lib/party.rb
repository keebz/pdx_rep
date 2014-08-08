class Party
  attr_reader:parties

  def initialize
    @parties = []
  end

  def add_party(party)
    @parties << party
  end

end
