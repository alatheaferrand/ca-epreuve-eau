# frozen_string_literal: true

# String dans string
# Détermine si une chaîne de caractères est contenue dans une autre chaîne.
# Affiche error et quitte le programme en cas de problèmes d'arguments.

# ========================
# Utility Functions
# ========================
def substring?(text, pattern)
  text_length = text.length
  pattern_length = pattern.length

  (0..text_length - pattern_length).each do |i|
    return true if text[i, pattern_length] == pattern
  end

  false
end

# ========================
# Error Handling
# ========================
def validate_arguments(args)
  return if args.size == 2 && args.none?(&:empty?)

  puts 'error: 2 arguments required'
  exit
end

# ========================
# Parsing Arguments
# ========================
def parse_arguments
  args = ARGV
  validate_arguments(args)
  args
end

# ========================
# Problem Solving
# ========================
def contains_substring?
  text, pattern = parse_arguments
  substring?(text, pattern)
end

# ========================
# Execution
# ========================
puts contains_substring?
