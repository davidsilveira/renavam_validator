# frozen_string_literal: true

class Validator
  RENAVAM_SIZE = 11
  VALIDATION_SEQUENCE = '3298765432'

  attr_reader :splitted, :verifying_digit, :renavam, :validated_sequence, :calculated_digit

  def initialize(renavam)
    @renavam = renavam
  end

  def self.validate(renavam)
    new(renavam).validate
  end

  def validate
    setup(renavam)

    return false unless format_valid?
    return true if calculated_digit == verifying_digit

    false
  end

  private

  def setup(renavam)
    @splitted = renavam.to_s.chars
    @verifying_digit = splitted.last.to_i
    @validated_sequence = validate_sequence
    @calculated_digit = calculate_digit
  end

  def format_valid?
    renavam.to_s !~ /\D/ &&
      splitted.size == RENAVAM_SIZE &&
      !validated_sequence.zero?
  end

  def validate_sequence
    sum = 0
    index = 0
    while index < VALIDATION_SEQUENCE.length
      sum += splitted[index].to_i * VALIDATION_SEQUENCE[index].to_i
      index += 1
    end
    sum
  end

  def calculate_digit
    verifying_number = (validated_sequence * 10) % 11

    verifying_number == 10 ? 0 : verifying_number
  end
end
