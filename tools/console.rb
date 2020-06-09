# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

harbor = Gym.new("harbor")
fitnes = Gym.new("fitnes")
bald_fitness = Gym.new("bald fitness")

joe = Lifter.new("joe", 60)
josh = Lifter.new("josh", 80)
shobi = Lifter.new("shobi", 90)

membership1 = Membership.new(25, harbor, joe)
membership2 = Membership.new(25, harbor, josh)
membership3 = Membership.new(40, fitnes, shobi)
membership4 = Membership.new(30, bald_fitness, shobi)
membership5 = Membership.new(30, bald_fitness, josh)
binding.pry

puts "Gains!"
