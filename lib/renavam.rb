# frozen_string_literal: true

class Renavam
  attr_reader :renavam

  def self.valid?(renavam)
    new(renavam).valid?
  end

  def initialize(renavam)
    @renavam = renavam
  end

  def valid?
    Validator.validate(renavam)
  end
end
