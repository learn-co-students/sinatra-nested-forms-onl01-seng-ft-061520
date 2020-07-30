class Pirate
  attr_accessor :name, :weight, :height

  @@pirates = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @@pirates << self
  end

  def self.all
    @@pirates
  end
end

# Pirates should have a name, weight, and height. You will also need a class method that returns all the pirates.
