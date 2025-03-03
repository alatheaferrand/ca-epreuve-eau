# frozen_string_literal: true

# Différence Minimum Absolue
# Affiche la plus petite différence absolue entre deux nombres consécutifs d'une liste donnée.
# La liste est constituée uniquement de nombres (positifs et négatifs acceptés).
# Affiche "error" et quitte le programme en cas de problème d'arguments.

# ========================
# Utility Functions
# ========================

def numeric?(value)
  !Integer(value, exception: false).nil?
end

def absolute_difference(first_value, second_value)
  first_value > second_value ? first_value - second_value : second_value - first_value
end

def find_smallest_difference(sorted_numbers)
  min_difference = absolute_difference(sorted_numbers[0], sorted_numbers[1])

  (1...sorted_numbers.length - 1).each do |i|
    difference = absolute_difference(sorted_numbers[i], sorted_numbers[i + 1])
    min_difference = difference if difference < min_difference
  end

  min_difference
end

# ========================
# Error Handling
# ========================

def validate_arguments(args)
  return if args.size >= 2 && args.all? { |arg| numeric?(arg) }

  puts 'error'
  exit
end

# ========================
# Parsing Arguments
# ========================

def extract_valid_numbers
  validate_arguments(ARGV)
  numbers = []
  i = 0
  while i < ARGV.length
    numbers << ARGV[i].to_i
    i += 1
  end
  numbers
end

# ========================
# Problem Solving
# ========================

def compute_smallest_absolute_difference
  numbers = extract_valid_numbers.sort
  find_smallest_difference(numbers)
end

# ========================
# Execution
# ========================
puts compute_smallest_absolute_difference
