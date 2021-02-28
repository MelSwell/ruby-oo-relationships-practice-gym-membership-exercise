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

  def self.average_lift
    @@all.map { |lifter| lifter.lift_total }
      .reduce(0) { |sum, num| sum + num } / @@all.count
  end

  def sign_membership(cost, gym)
    Membership.new(cost, self, gym) unless cost != gym.membership_cost      
  end

  def all_memberships
    Membership.all.select { |mem| mem.lifter == self }
  end

  def all_gyms
    all_memberships.map { |mem| mem.gym }
  end

  def total_cost_of_memberships
    all_gyms.map { |gym| gym.membership_cost }.reduce(0) { |sum, num| sum + num }
  end

end
