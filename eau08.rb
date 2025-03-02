# frozen_string_literal: true

# Chiffres only
# Détermine si une chaîne de caractères ne contient que des chiffres.
# Affiche "error" et quitte le programme en cas de problème d'arguments.

# ========================
# Utility Functions
# ========================
def numeric?(text)
  text.chars.all? { |char| char.between?('0', '9') }
end

# ========================
# Error Handling
# ========================
def validate_argument_presence(args)
  return if args.size == 1 && !args[0].empty?

  puts 'error'
  exit
end

# ========================
# Parsing Arguments
# ========================
def extract_text_argument
  args = ARGV
  validate_argument_presence(args)
  args[0]
end

# ========================
# Problem Solving
# ========================
def check_numeric_string
  text = extract_text_argument
  numeric?(text)
end

# ========================
# Execution
# ========================
puts check_numeric_string
