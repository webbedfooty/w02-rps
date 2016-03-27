# players.rb
require "pry"

class Player
  attr_accessor :name

  def initialize(options={})
    @name       = options[:name]
  end

end

#binding.pry
