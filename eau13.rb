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

def numeric?(value)
  !Integer(value, exception: false).nil?
end

# Implémentation du tri par sélection
def my_selection_sort(array)
  length = array.length

  (0...length - 1).each do |i|
    min_index = i

    (i + 1...length).each do |j|
      min_index = j if array[j] < array[min_index]
    end

    array[i], array[min_index] = array[min_index], array[i] if min_index != i
  end

  array
end

# ========================
# Error Handling
# ========================

def validate_numeric_arguments(args)
  return if args.size >= 2 && args.all? { |arg| numeric?(arg) }

  puts 'error'
  exit
end

# ========================
# Parsing Arguments
# ========================

def extract_numbers
  args = ARGV
  validate_numeric_arguments(args)

  numbers = []
  args.each { |arg| numbers << arg.to_i }
  numbers
end

# ========================
# Problem Solving
# ========================

def compute_sorted_numbers
  numbers = extract_numbers
  my_selection_sort(numbers).join(' ')
end

# ========================
# Execution
# ========================

puts compute_sorted_numbers
