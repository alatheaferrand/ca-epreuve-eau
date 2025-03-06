# frozen_string_literal: true

# Majuscule
# Met en majuscule la première lettre de chaque mot d'une chaîne de caractères.
# Les autres lettres devront être en minuscules.
# Les mots sont délimités par un espace, une tabulation ou un retour à la ligne.
# Affiche "error" et quitte le programme en cas de problème d'arguments.

# ========================
# Utility Functions
# ========================
def char_between_a_and_z?(char)
  ('A' <= char && char <= 'Z') || ('a' <= char && char <= 'z')
end

def to_uppercase(char)
  char = (char.ord - 32).chr if 'a' <= char && char <= 'z'
  char
end

def to_lowercase(char)
  char = (char.ord + 32).chr if 'A' <= char && char <= 'Z'
  char
end

def capitalize_words(string)
  result = +''
  new_word = true
  index = 0

  while index < string.length
    char = string[index]

    if char_between_a_and_z?(char)
      char = new_word ? to_uppercase(char) : to_lowercase(char)
      new_word = false
    else
      new_word = true
    end

    result << char
    index += 1
  end

  result
end

# ========================
# Error Handling
# ========================
def single_argument?(arguments)
  arguments.size == 1
end

def numeric?(number)
  !Integer(number, exception: false).nil?
end

def validate_arguments(arguments)
  return 'error: one argument required' unless single_argument?(arguments)
  return 'error: argument must be a string' if numeric?(arguments[0])

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
def apply_capitalization()
  arguments = retrieve_arguments()
  error_message = validate_arguments(arguments)
  return error_message if error_message

  capitalize_words(arguments[0])
end

# ========================
# Execution
# ========================
puts apply_capitalization()
