# frozen_string_literal: true

# Majuscule
# Met en majuscule la première lettre de chaque mot d'une chaîne de caractères.
# Les autres lettres devront être en minuscules.
# Les mots sont délimités par un espace, une tabulation ou un retour à la ligne.
# Affiche "error" et quitte le programme en cas de problème d'arguments.

# ========================
# Utility Functions
# ========================
def capitalize_words(text)
  result = +'' # Utilisation de l'unary `+` pour obtenir une chaîne mutable
  @new_word = true

  text.each_char { |char| result << process_character(char) }

  result
end

def process_character(char)
  @new_word = true if char !~ /\p{Alpha}/
  return char unless char =~ /\p{Alpha}/

  transformed_char = @new_word ? char.upcase : char.downcase
  @new_word = false
  transformed_char
end

# ========================
# Error Handling
# ========================
def validate_argument_presence(args)
  return if args.size == 1 && args[0] =~ /\p{Alpha}/

  puts 'error'
  exit
end

# ========================
# Parsing Arguments
# ========================
def retrieve_text_argument
  args = ARGV
  validate_argument_presence(args)
  args[0]
end

# ========================
# Problem Solving
# ========================
def apply_capitalization
  text = retrieve_text_argument
  capitalize_words(text)
end

# ========================
# Execution
# ========================
puts apply_capitalization
