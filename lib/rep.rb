require 'pry'
class Rep
  attr_reader:name,:party,:type

  @@pdx_reps = []

  def initialize(name)
    @name = name
    @party = nil
    @type = nil
    @@pdx_reps << self
  end

  def set_party(party)
    @party = party
  end

  def set_rep_type(type)
    @type = type
  end

  def Rep.list
    @@pdx_reps
  end

  def Rep.clear
    @@pdx_reps = []
  end
end
