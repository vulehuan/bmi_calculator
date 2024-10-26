# BMI Calculator Gem

A simple Ruby gem to calculate Body Mass Index (BMI) based on weight and height. This gem provides a straightforward way to compute BMI and categorize it into various health categories.

## Installation

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add bmi_calculator --source=https://github.com/vulehuan/bmi_calculator.git
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install bmi_calculator --source=https://github.com/vulehuan/bmi_calculator.git
```

## Usage

Here’s how to use the `bmi_calculator` gem in your Ruby application:

```ruby
require 'bmi_calculator'

# Initialize weight (in kilograms) and height (in meters)
weight = 70
height = 1.75

# Calculate BMI
bmi = BMICalculator::Calculator.calculate(weight, height)
puts "Your BMI is: #{bmi}"

# Get BMI category
category = BMICalculator::Calculator.bmi_category(bmi)
puts "BMI Category: #{category}"
```

### Methods

- **`BMICalculator::Calculator.calculate(weight, height)`**: Calculates the BMI based on the provided weight and height.
    - **Parameters**:
        - `weight`: The weight of the individual in kilograms.
        - `height`: The height of the individual in meters.
    - **Returns**: The calculated BMI rounded to two decimal places.

- **`BMICalculator::Calculator.bmi_category(bmi)`**: Returns the BMI category based on the calculated BMI.
    - **Parameters**:
        - `bmi`: The calculated BMI value.
    - **Returns**: A string indicating the BMI category ("Underweight", "Normal", "Overweight", "Obesity").

## Example

```ruby
weight = 65
height = 1.68

bmi = BMICalculator::Calculator.calculate(weight, height)
puts "Your BMI is: #{bmi}"               # Output: Your BMI is: 23.06
puts "BMI Category: #{BMICalculator::Calculator.bmi_category(bmi)}"  # Output: BMI Category: Normal
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/vulehuan/bmi_calculator.
