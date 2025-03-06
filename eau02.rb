# frozen_string_literal: true

# Paramètres à l'envers
# Affiche ses arguments reçus à l'envers

# ========================
# Utility Functions
# ========================
def reverse_array(array)
  reversed = []
  i = array.length - 1
  while i >= 0
    reversed << array[i]
    i -= 1
  end
  reversed
end

# ========================
# Error Handling
# ========================
def at_least_two_arguments?(arguments)
  arguments.size >= 2
end

def validate_arguments(arguments)
  return 'error: at least 2 arguments required' unless at_least_two_arguments?(arguments)

  nil # Indique que la validation est passée
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
def reversed_arguments()
  arguments = retrieve_arguments()
  error_message = validate_arguments(arguments)
  return error_message if error_message

  return reverse_array(arguments)
end

# ========================
# Execution
# ========================
puts reversed_arguments()
