# players.rb
require "pry"

class Player

  attr_accessor :name, :wins, :throw

  def initialize(name:, wins:, throw:)
    @name = name
    @description = wins
    @throw = throw
  end
end

#binding.pry
