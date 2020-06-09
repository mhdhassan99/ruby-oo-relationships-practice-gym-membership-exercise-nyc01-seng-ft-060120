class Gym
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self 
  end

#   Get a list of all gyms
  def self.all 
    @@all
  end
# Get a list of all memberships at a specific gym
  def memberships
    Membership.all.select do |member|
      member.gym == self
    end
  end

# Get a list of all the lifters that have a membership to a specific gym
  def lifters
    memberships.map do |membership|
      membership.lifter
    end
  end

# Get a list of the names of all lifters that have a membership to that gym
  def lifters_name 
    lifters.map do |lifter|
      lifter.name
    end
  end

# Get the combined lift total of every lifter has a membership to that gym
  def lift_totals
    lifters.sum do |lifter|
      lifter.lift_total
    end
  end
end
