class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|x| x.gym == self}
  end

  def lifters
    memberships.map {|x| x.lifter}
  end

  def lifter_names
    lifters.map {|x| x.name}
  end
  
  def total_lift
    lifters.map {|x| x.lift_total}.reduce(:+)
  end

end
