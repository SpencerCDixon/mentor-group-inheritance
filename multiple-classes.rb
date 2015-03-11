require 'pry'

class Chip
  def initialize(flavor)
    @flavor = flavor
  end
end

class Bag
  def initialize
    @chips = []
  end

  def chips
    @chips
  end
end

flavors = []

30.times do
  flavor = ["BBQ", "Salt & Vinegar", "Nacho"].sample
  flavors << flavor
end

puts flavors
binding.pry

bag = Bag.new

flavors.each do |flavor|
  bag.chips << Chip.new(flavor)
end

binding.pry
