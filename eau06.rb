# frozen_string_literal: true

# Majuscule sur deux
# Affiche une lettre sur 2 en majuscule
# Seules les lettres (A-Z, a-z) sont prises en compte
# Affiche error et quitte le programme en cas de problème d'arguments.

# ========================
# Utility Functions
# ========================
def alternate_case_text(text)
  result = +'' # Chaîne mutable, même avec frozen_string_literal: true
  processed_letters = 0

  text.each_char do |char|
    if char.between?('A', 'Z') || char.between?('a', 'z')
      char = processed_letters.even? ? char.upcase : char.downcase
      processed_letters += 1
    end
    result << char
  end

  result
end

# ========================
# Error Handling
# ========================
def validate_text_argument(args)
  return if args.size == 1 && args[0].count('a-zA-Z').positive?

  puts 'error'
  exit
end

# ========================
# Parsing Arguments
# ========================
def extract_valid_text_argument
  args = ARGV
  validate_text_argument(args)
  args[0]
end

# ========================
# Problem Solving
# ========================
def apply_alternate_case
  text = extract_valid_text_argument
  alternate_case_text(text)
end

# ========================
# Execution
# ========================
puts apply_alternate_case
