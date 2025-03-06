# frozen_string_literal: true

# Prochain nombre premier
# Affiche le premier nombre premier supérieur au nombre donné en argument
# Affiche -1 si le paramètre est négatif ou mauvais

# ========================
# Utility Functions
# ========================
def prime?(number)
  return false if number < 2
  return true if number == 2

  divisor = 2
  while divisor * divisor <= number
    return false if number % divisor == 0
    divisor += 1
  end

  true
end

def next_prime(number)
  loop do
    number += 1
    return number if prime?(number)
  end
end

# ========================
# Error Handling
# ========================
def numeric?(number)
  !Integer(number, exception: false).nil?
end

def single_argument?(arguments)
  arguments.size == 1
end

def positive_integer?(number)
  number.to_i >= 0
end

def validate_arguments(arguments)
  return '-1: one argument required' unless single_argument?(arguments)
  return '-1: argument must be an integer' unless numeric?(arguments[0])
  return '-1: argument must be positive' unless positive_integer?(arguments[0])

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
def next_prime_number()
  arguments = retrieve_arguments()
  error_message = validate_arguments(arguments)
  return error_message if error_message

  number = arguments[0].to_i
  next_prime(number)
end

# ========================
# Execution
# ========================
puts next_prime_number()
