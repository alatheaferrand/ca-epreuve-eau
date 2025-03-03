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

def numeric?(value)
  !Integer(value, exception: false).nil?
end

# my_bubble_sort
def my_bubble_sort(array)
  length = array.length
  (length - 1).times do |i|
    (length - 1 - i).times do |j|
      array[j], array[j + 1] = array[j + 1], array[j] if array[j] > array[j + 1]
    end
  end
  array
end

# ========================
# Error Handling
# ========================

def validate_arguments(args)
  return if args.size >= 2 && args.all? { |arg| numeric?(arg) }

  puts 'error'
  exit
end

# ========================
# Parsing Arguments
# ========================

def extract_valid_numbers
  args = ARGV
  validate_arguments(args)
  numbers = []
  i = 0
  while i < args.length
    numbers << args[i].to_i
    i += 1
  end
  numbers
end

# ========================
# Problem Solving
# ========================

def compute_sorted_numbers
  numbers = extract_valid_numbers
  sorted_numbers = my_bubble_sort(numbers)

  result = +''
  i = 0
  while i < sorted_numbers.length
    result << sorted_numbers[i].to_s
    result << ' ' if i < sorted_numbers.length - 1
    i += 1
  end
  result
end

# ========================
# Execution
# ========================
puts compute_sorted_numbers
