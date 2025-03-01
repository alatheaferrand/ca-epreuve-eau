# frozen_string_literal: true

# Prochain nombre premier
# Affiche le premier nombre premier supérieur au nombre donné en argument
# Affiche -1 si le paramètre est négatif ou mauvais

# ========================
# Utility Functions
# ========================
def numeric?(arg)
  !Integer(arg, exception: false).nil?
end

def prime?(number, divisor = 2)
  return true if divisor * divisor > number
  return false if (number % divisor).zero?

  prime?(number, divisor + 1)
end

def next_prime(number)
  number += 1
  return number if prime?(number, 2)

  next_prime(number)
end

# ========================
# Error Handling
# ========================
def validate_argument(args)
  return if args.size == 1 && numeric?(args[0]) && args[0].to_i.positive?

  puts '-1'
  exit
end

# ========================
# Parsing Arguments
# ========================
def extract_valid_argument
  args = ARGV
  validate_argument(args)
  args[0].to_i
end

# ========================
# Problem Solving
# ========================
def compute_next_prime
  number = extract_valid_argument
  next_prime(number)
end

# ========================
# Execution
# ========================
puts compute_next_prime
