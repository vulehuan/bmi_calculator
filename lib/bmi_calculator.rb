# frozen_string_literal: true

require_relative "bmi_calculator/version"

module BmiCalculator
  class Error < StandardError; end

  def self.calculate(weight, height)
    if height <= 0 || weight <= 0
      raise ArgumentError, "Weight and height must be greater than 0"
    end

    bmi = weight / (height ** 2)
    bmi.round(2)
  end

  def self.bmi_category(bmi)
    case bmi
    when 0..18.4 then "Underweight"
    when 18.5..24.9 then "Normal"
    when 25..29.9 then "Overweight"
    else "Obesity"
    end
  end
end
