# frozen_string_literal: true

# Par ordre ASCII
# Trie les éléments donnés en argument selon l'ordre ASCII.
# Affiche "error" et quitte le programme en cas de problème d'arguments.

# ========================
# Utility Functions
# ========================

def swap_elements(array, first_index, second_index)
  array[first_index], array[second_index] = array[second_index], array[first_index]
end

def appears_before?(first_word, second_word)
  index = 0

  while index < first_word.length && index < second_word.length
    return true if first_word[index] < second_word[index]
    return false if first_word[index] > second_word[index]

    index += 1
  end

  first_word.length < second_word.length
end

def sort_words_by_ascii(array)
  size = array.length

  (0...size - 1).each do |current_index|
    smallest_index = current_index

    (current_index + 1...size).each do |check_index|
      smallest_index = check_index if appears_before?(array[check_index], array[smallest_index])
    end

    swap_elements(array, current_index, smallest_index) if smallest_index != current_index
  end

  array
end

# ========================
# Error Handling
# ========================

def validate_arguments(arguments)
  return unless arguments.empty?

  puts 'error'
  exit
end

# ========================
# Parsing Arguments
# ========================

def extract_words
  arguments = ARGV
  validate_arguments(arguments)
  arguments
end

# ========================
# Problem Solving
# ========================

def sort_by_ascii_order
  words = extract_words
  sort_words_by_ascii(words).join(' ')
end

# ========================
# Execution
# ========================

puts sort_by_ascii_order
