# players.rb
require "pry"

class Player
  attr_accessor :name, :left_right

  def initialize(options={})
    @name       = options[:name]
    @left_right = options[:left_right]
  end

end

#binding.pry
