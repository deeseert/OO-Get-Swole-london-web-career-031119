# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
#Lifters
l1 = Lifter.new("Gio", 80)
l2 = Lifter.new("Ruby", 30)
l3 = Lifter.new("John", 60)
l4 = Lifter.new("Matilde", 100)
l5 = Lifter.new("Oli", 95)

#Gyms
g1 = Gym.new("Atlantide")
g2 = Gym.new("Better Gym")
g3 = Gym.new("Pure Gym")
g4 = Gym.new("Get Bigger")
g5 = Gym.new("Get Leaner")

#Memberships
m1 = Membership.new(g1, l1, 30)
m2 = Membership.new(g2, l1, 10)
m2 = Membership.new(g3, l1, 20)
m3 = Membership.new(g2, l2, 4)
m4 = Membership.new(g3, l3, 45)
m5 = Membership.new(g4, l4, 89)
m6 = Membership.new(g5, l5, 120)
m7 = Membership.new(g2, l2, 42)
m8 = Membership.new(g3, l3, 12)
m9 = Membership.new(g4, l4, 46)
m10 = Membership.new(g5, l5, 94)
m11 = Membership.new(g4, l4, 32)
m11 = Membership.new(g1, l4, 32)

binding.pry

puts "Gains!"
