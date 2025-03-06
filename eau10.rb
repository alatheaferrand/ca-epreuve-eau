# frozen_string_literal: true

# Index Wanted
# Affiche le premier index d'un élément recherché dans un tableau.
# Le tableau est constitué de tous les arguments sauf le dernier.
# L'élément recherché est le dernier argument.
# Affiche "-1" si l'élément n'est pas trouvé.
# Affiche "error" en cas de problème d'arguments.

# ========================
# Utility Functions
# ========================

def index_of_element(element, array)
  i = 0
  while i < array.length
    return i if array[i] == element
    i += 1
  end
  '-1: element not found'
end

# ========================
# Error Handling
# ========================
def at_least_two_arguments?(arguments)
  arguments.size >= 2
end

def validate_arguments(arguments)
  return 'error: at least 2 arguments required' unless at_least_two_arguments?(arguments)

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
def compute_index_of_element()
  arguments = retrieve_arguments()
  error_message = validate_arguments(arguments)
  return error_message if error_message

  element = arguments[-1]
  array = arguments[0...-1]

  return index_of_element(element, array)
end

# ========================
# Execution
# ========================
puts compute_index_of_element()
