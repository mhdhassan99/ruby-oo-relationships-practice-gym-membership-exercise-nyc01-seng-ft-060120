class Membership
  attr_reader :cost, :gym, :lifter

  @@all = []
  def initialize(cost, gym, lifter)
    @cost = cost
    @gym = gym
    @lifter = lifter 
    @@all << self 
  end

  # Get a list of all memberships
  def self.all 
    @@all
  end
  

end
