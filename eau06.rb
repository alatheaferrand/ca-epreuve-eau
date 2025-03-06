# frozen_string_literal: true

# Majuscule sur deux
# Affiche une lettre sur 2 en majuscule
# Seules les lettres (A-Z, a-z) sont prises en compte
# Affiche error et quitte le programme en cas de problème d'arguments.

# ========================
# Utility Functions
# ========================
def is_even?(number)
  number % 2 == 0
end

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

def toggle_case_letters(string)
  result = +''
  letter_count = 0

  string.each_char do |char|
    if char_between_a_and_z?(char)
      char = is_even?(letter_count) ? to_uppercase(char) : to_lowercase(char)
      letter_count += 1
    end
    result << char
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
def convert_to_alternate_case()
  arguments = retrieve_arguments()
  error_message = validate_arguments(arguments)
  return error_message if error_message

  return toggle_case_letters(arguments[0])
end

# ========================
# Execution
# ========================
puts convert_to_alternate_case()
