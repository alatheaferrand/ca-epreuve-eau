# frozen_string_literal: true

# Index Wanted
# Affiche le premier index d'un élément recherché dans un tableau.
# Le tableau est constitué de tous les arguments sauf le dernier.
# L'élément recherché est le dernier argument.
# Affiche "-1" si l'élément n'est pas trouvé.
# Affiche "error" et quitte le programme en cas de problème d'arguments.

# ========================
# Utility Functions
# ========================
def find_first_occurrence(target, elements)
  i = 0
  while i < elements.length
    return i if elements[i] == target

    i += 1
  end
  -1
end

# ========================
# Error Handling
# ========================
def validate_arguments(args)
  return if args.size >= 2

  puts 'error'
  exit
end

# ========================
# Parsing Arguments
# ========================
def extract_search_data
  args = ARGV
  validate_arguments(args)
  elements = args[0...-1]
  target = args[-1]
  [elements, target]
end

# ========================
# Problem Solving
# ========================
def find_target_index
  elements, target = extract_search_data
  find_first_occurrence(target, elements)
end

# ========================
# Execution
# ========================
puts find_target_index
