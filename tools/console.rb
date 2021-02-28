# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

my_gym = Gym.new("Seth's Gym", 50)
henrys_gym = Gym.new("Henry's Gym", 100)
bongos_gym = Gym.new("Bongo's Gym", 100)
dianas_gym = Gym.new("Diana's Gym", 150)
baraks_gym = Gym.new("Barak's Gym", 175)

james = Lifter.new("James", 150)
mel = Lifter.new("Mel", 150)
posy = Lifter.new("Posy", 250)
greg = Lifter.new("Greg", 50)
seth = Lifter.new("Seth", 25)

mem_1 = posy.sign_membership(henrys_gym.membership_cost, henrys_gym)
mem_2 = posy.sign_membership(henrys_gym.membership_cost, bongos_gym)
mem_3 = greg.sign_membership(50, henrys_gym)
mem_4 = james.sign_membership(dianas_gym.membership_cost, dianas_gym)
mem_5 = james.sign_membership(baraks_gym.membership_cost, baraks_gym)
mem_6 = seth.sign_membership(my_gym.membership_cost, my_gym)
mem_7 = seth.sign_membership(henrys_gym.membership_cost, henrys_gym)
mem_8 = greg.sign_membership(henrys_gym.membership_cost, henrys_gym)
mem_9 = greg.sign_membership(baraks_gym.membership_cost, baraks_gym)
mem_10 = posy.sign_membership(dianas_gym.membership_cost, dianas_gym)




binding.pry

puts "Gains!"
