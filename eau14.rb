# frozen_string_literal: true

# Par ordre ASCII
# Trie les éléments donnés en argument selon l'ordre ASCII.
# Affiche "error" et quitte le programme en cas de problème d'arguments.

# ========================
# Utility Functions
# ========================
# Convertit une chaîne en tableau ASCII
def string_to_ascii(string)
  ascii_array = []
  string.each_char { |char| ascii_array << char.ord }
  ascii_array
end

# Convertit une liste de chaînes en tableaux ASCII
def strings_to_ascii_array(strings)
  ascii_arrays = []
  strings.each { |string| ascii_arrays << string_to_ascii(string) }
  ascii_arrays
end

# Convertit une liste de tableaux ASCII en chaînes de caractères
def ascii_arrays_to_strings(ascii_arrays)
  strings = []
  ascii_arrays.each do |ascii_array|
    string = +''
    ascii_array.each { |ascii| string << ascii.chr }
    strings << string
  end
  strings
end

# Compare deux tableaux ASCII (renvoie true si a < b en ASCII)
def compare_ascii_arrays(a, b)
  i = 0
  while i < a.length && i < b.length
    return true if a[i] < b[i]
    return false if a[i] > b[i]
    i += 1
  end
  a.length < b.length
end

# Trie une liste de tableaux ASCII avec un tri à bulle
def my_bubble_sort(ascii_arrays)
  length = ascii_arrays.length
  (length - 1).times do |i|
    (length - 1 - i).times do |j|
      if compare_ascii_arrays(ascii_arrays[j + 1], ascii_arrays[j])
        ascii_arrays[j], ascii_arrays[j + 1] = ascii_arrays[j + 1], ascii_arrays[j]
      end
    end
  end
  ascii_arrays
end

# Fonction principale
def ascii_sort(arguments)
  return if arguments.empty?

  # 1️⃣ Convertit les chaînes en tableaux ASCII
  ascii_arrays = strings_to_ascii_array(arguments)

  # 2️⃣ Trie les tableaux ASCII
  sorted_ascii_arrays = my_bubble_sort(ascii_arrays)

  # 3️⃣ Convertit les tableaux triés en chaînes et affiche le résultat
  sorted_strings = ascii_arrays_to_strings(sorted_ascii_arrays)
  return sorted_strings
end


# ========================
# Error Handling
# ========================

def at_least_one_argument?(arguments)
  arguments.size >= 1
end

def validate_arguments(arguments)
  return 'error: at least one argument required' unless at_least_one_argument?(arguments)

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

def sorted_by_ascii_order()
  arguments = retrieve_arguments()
  error_message = validate_arguments(arguments)
  return error_message if error_message

  return ascii_sort(arguments).join(' ')
end

# ========================
# Execution
# ========================

puts sorted_by_ascii_order()
