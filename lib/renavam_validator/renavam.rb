# frozen_string_literal: true

class Renavam
  attr_reader :renavam

  def initialize(renavam)
    @renavam = renavam
  end

  def self.valid?(renavam)
    new(renavam).valid?
  end

  def valid?
    true
  end
end
