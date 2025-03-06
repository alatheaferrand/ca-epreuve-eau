# frozen_string_literal: true

# Tri par sélection
# Trie une liste de nombres.
# Implémente l'algorithme du tri par sélection.
# Utiliser une fonction de cette forme :
# my_selection_sort(array) {
#   votre algorithme
#   return (new_array)
# }
# Afficher error et quitter le programme en cas de problèmes d'arguments.

# ========================
# Utility Functions
# ========================

# Implémentation du tri par sélection
def my_selection_sort(numbers)
  length = numbers.length

  (0...length - 1).each do |i|
    min_index = i

    (i + 1...length).each do |j|
      min_index = j if numbers[j] < numbers[min_index]
    end

    numbers[i], numbers[min_index] = numbers[min_index], numbers[i] if min_index != i
  end

  numbers
end

# ========================
# Error Handling
# ========================

def at_least_two_arguments?(arguments)
  arguments.size >= 2
end

def numeric?(number)
  !Integer(number, exception: false).nil?
end

def validate_arguments(arguments)
  return 'error: at least 2 arguments required' unless at_least_two_arguments?(arguments)
  return 'error: all arguments must be numeric' unless arguments.all? { |argument| numeric?(argument) }

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

def my_selection_sorted_numbers()
  arguments = retrieve_arguments()
  error_message = validate_arguments(arguments)
  return error_message if error_message
  
  numbers = []
  for i in 0..arguments.length - 1
    numbers << arguments[i].to_i
  end

  return my_selection_sort(numbers).join(' ')
end

# ========================
# Execution
# ========================

puts my_selection_sorted_numbers()
