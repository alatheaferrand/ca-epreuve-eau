# frozen_string_literal: true

# Entre min et max
# Affiche toutes les valeurs comprises entre deux nombres dans l'ordre croissant.
# Min inclus, max exclus.
# Affiche "error" et quitte le programme en cas de problème d'arguments.

# ========================
# Utility Functions
# ========================
def range_between(min, max)
  min, max = max, min if min > max
  
  range = []
  current = min

  while current < max
    range << current
    current += 1
  end

  range
end

# ========================
# Error Handling
# ========================
def two_arguments?(arguments)
  arguments.size == 2
end

def numeric?(number)
  !Integer(number, exception: false).nil?
end

def validate_arguments(arguments)
  return 'error: two arguments required' unless two_arguments?(arguments)
  return 'error: all arguments must be numeric' unless numeric?(arguments[0]) && numeric?(arguments[1])

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
def compute_range()
  arguments = retrieve_arguments()
  error_message = validate_arguments(arguments)
  return error_message if error_message

  min, max = arguments[0].to_i, arguments[1].to_i
  return range_between(min, max).join(' ')
end

# ========================
# Execution
# ========================
puts compute_range()
