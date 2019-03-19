class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|x| x.lifter == self}
  end

  def gyms
    memberships.map {|x| x.gym}
  end

  def average_lift
    var = Lifter.all.collect {|x| x.lift_total}.reduce(:+)
    # var.inject{ |sum, el| sum + el }.to_f / var.size
  end

  def total_cost
    memberships.map {|x| x.cost}.reduce(:+)
  end

  def sign_up(gym, cost)
    Membership.new(gym, self, cost)
  end

end
