class Gym
  attr_reader :name, :membership_cost

  @@all = []

  def initialize(name, cost)
    @name = name
    @membership_cost = cost
    @@all << self
  end

  def self.all
    @@all
  end

  def all_memberships
    Membership.all.select { |mem| mem.gym == self }
  end

  def all_lifters
    all_memberships.map { |mem| mem.lifter }
  end

  def all_lifters_names
    all_lifters.map { |lifter| lifter.name }
  end

  def combined_lift_total
    all_lifters.map { |lifter| lifter.lift_total }
      .reduce(0) { |sum, num| sum + num }
  end

  def strongest_lifter
    max_lift = all_lifters.map { |lifter| lifter.lift_total }.max
    all_lifters.select { |lifter| lifter.lift_total == max_lift }
  end

end
