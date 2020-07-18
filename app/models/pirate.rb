class Pirate

  attr_reader :name, :weight, :height, :ships

  @@all = []

  def initialize(data)
    @name = data[:name]
    @weight = data[:weight]
    @height = data[:height]
    @ships = data[:ships]
    @@all << self
  end

  def self.all
    @@all
  end
end
