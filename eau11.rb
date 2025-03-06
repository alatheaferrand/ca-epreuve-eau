# frozen_string_literal: true

# Différence Minimum Absolue
# Affiche la plus petite différence absolue entre deux nombres consécutifs d'une liste donnée.
# La liste est constituée uniquement de nombres (positifs et négatifs acceptés).
# Affiche "error" et quitte le programme en cas de problème d'arguments.

# ========================
# Utility Functions
# ========================

def absolute_difference(first_value, second_value)
  first_value > second_value ? first_value - second_value : second_value - first_value
end

def find_smallest_difference(numbers)
  min_difference = absolute_difference(numbers[0], numbers[1])

  i = 0
  while i < numbers.length
    j = i + 1
    while j < numbers.length
      difference = absolute_difference(numbers[i], numbers[j])
      min_difference = difference if difference < min_difference
      j += 1
    end
    i += 1
  end

  min_difference
end

# ========================
# Error Handling
# ========================

def at_least_two_arguments?(arguments)
  arguments.size >= 2
end

def numeric?(number)
  !Integer(number, exception: false).nil?
end

def validate_arguments(arguments)
  return 'error: at least 2 arguments required' unless at_least_two_arguments?(arguments)
  return 'error: all arguments must be numeric' unless arguments.all? { |argument| numeric?(argument) }

  nil
end

# ========================
# Parsing Arguments
# ========================

def retrieve_arguments()
  arguments = ARGV
end

# ========================
# Problem Solving
# ========================

def compute_smallest_absolute_difference()
  arguments = retrieve_arguments()
  error_message = validate_arguments(arguments)
  return error_message if error_message

  numbers = []
  for i in 0..arguments.length - 1
    numbers << arguments[i].to_i
  end

  return find_smallest_difference(numbers)
end

# ========================
# Execution
# ========================
puts compute_smallest_absolute_difference()
