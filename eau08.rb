# frozen_string_literal: true

# Chiffres only
# Détermine si une chaîne de caractères ne contient que des chiffres.
# Affiche "error" et quitte le programme en cas de problème d'arguments.

# ========================
# Utility Functions
# ========================
def char_between_0_and_9?(char)
  (0..9).each do |number|
    return true if char == number.to_s
  end
  false
end

def is_negative?(number)
  number[0] == '-'
end

def is_numeric?(number)
  number = number[1..] if is_negative?(number)
  number.each_char { |char| return false unless char_between_0_and_9?(char) }
  true
end

# ========================
# Error Handling
# ========================
def single_argument?(arguments)
  arguments.size == 1
end

def validate_argument_presence(args)
  return 'error: one argument required' unless single_argument?(args)

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
def is_numeric_string?()
  arguments = retrieve_arguments()
  error_message = validate_argument_presence(arguments)
  return error_message if error_message

  is_numeric?(arguments[0])
end

# ========================
# Execution
# ========================
puts is_numeric_string?()
