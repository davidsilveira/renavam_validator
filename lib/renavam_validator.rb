# frozen_string_literal: true

require_relative 'renavam_validator/version'
require 'renavam'
require 'renavam/validator'

module RenavamValidator
  class Error < StandardError; end
end
