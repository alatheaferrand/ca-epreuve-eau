# frozen_string_literal: true

# Tri à bulle
# Affiche la liste des nombres triés dans l'ordre croissant
# Utiliser une fonction de cette forme :
# my_bubble_sort(array) {
#   votre algorithme
#   return (new_array)
# }
# Afficher error et quitter le programme en cas de problèmes d'arguments

# ========================
# Utility Functions
# ========================

# my_bubble_sort
def my_bubble_sort(numbers)
  length = numbers.length
  (length - 1).times do |i|
    (length - 1 - i).times do |j|
      numbers[j], numbers[j + 1] = numbers[j + 1], numbers[j] if numbers[j] > numbers[j + 1]
    end
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

def my_bubble_sorted_numbers()
  arguments = retrieve_arguments()
  error_message = validate_arguments(arguments)
  return error_message if error_message

  numbers = []
  for i in 0..arguments.length - 1
    numbers << arguments[i].to_i
  end

  return my_bubble_sort(numbers).join(' ')
end

# ========================
# Execution
# ========================
puts my_bubble_sorted_numbers()
