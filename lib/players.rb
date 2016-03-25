# players.rb
require "pry"

class Player
  attr_accessor :name, :left_right, :country

  def initialize(options={})
    @name       = options[:name]
    @left_right = options[:left_right]
    @country    = options[:country]
  end

end

#binding.pry
