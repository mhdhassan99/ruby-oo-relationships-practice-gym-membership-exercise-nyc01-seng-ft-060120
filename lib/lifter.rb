class Lifter
  attr_reader :name, :lift_total

  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self 
  end

# Get a list of all lifters
  def self.all
    @@all 
  end
# Get a list of all the memberships that a specific lifter has
  def memberships
    Membership.all.select do |member|
      member.lifter == self
    end
  end

# Get a list of all the gyms that a specific lifter has memberships to
  def gyms
    memberships.map do |membership|
      membership.gym
    end
  end

# Get the average lift total of all lifters
  def self.average
    @@all.sum {|lifter| lifter.lift_total} / @@all.size
  end

# Get the total cost of a specific lifter's gym memberships
  def gym_membership
    memberships.sum {|total_cost| total_cost.cost}
  end

# Given a gym and a membership cost, sign a specific lifter up for a new gym
  def new_member(gym, cost)
    Membership.new(cost, gym, self)
  end
end
