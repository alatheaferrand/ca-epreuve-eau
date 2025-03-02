# frozen_string_literal: true

# Entre min et max
# Affiche toutes les valeurs comprises entre deux nombres dans l'ordre croissant.
# Min inclus, max exclus.
# Affiche "error" et quitte le programme en cas de problème d'arguments.

# ========================
# Utility Functions
# ========================
def numeric?(arg)
  !Integer(arg, exception: false).nil?
end

def range_between(min, max)
  min, max = max, min if min > max
  (min...max).to_a
end

# ========================
# Error Handling
# ========================
def validate_arguments(args)
  return if args.size == 2 && args.all? { |arg| numeric?(arg) } && args[0] != args[1]

  puts 'error'
  exit
end

# ========================
# Parsing Arguments
# ========================
def extract_valid_numbers
  args = ARGV
  validate_arguments(args)
  args.map(&:to_i)
end

# ========================
# Problem Solving
# ========================
def compute_range
  min, max = extract_valid_numbers
  range_between(min, max).join(' ')
end

# ========================
# Execution
# ========================
puts compute_range
