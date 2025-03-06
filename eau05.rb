# frozen_string_literal: true

# String dans string
# Détermine si une chaîne de caractères est contenue dans une autre chaîne.
# Affiche error et quitte le programme en cas de problème d'arguments.

# ========================
# Utility Functions
# ========================
def includes_substring?(string, substring)
  i = 0
  while i <= string.length - substring.length
    j = 0

    while j < substring.length && string[i + j] == substring[j]
      j += 1
    end

    return true if j == substring.length

    i += 1
  end

  false
end

# ========================
# Error Handling
# ========================
def two_arguments?(arguments)
  arguments.size == 2
end

def validate_arguments(arguments)
  return '-1: two arguments required' unless two_arguments?(arguments)

  nil # Indique que la validation est passée
end

# ========================
# Parsing Arguments
# ========================
def retrieve_arguments()
  return ARGV
end

# ========================
# Problem Solving
# ========================
def contains_substring?()
  arguments = retrieve_arguments()
  error_message = validate_arguments(arguments)
  return error_message if error_message

  includes_substring?(arguments[0], arguments[1])
end

# ========================
# Execution
# ========================
puts contains_substring?()
