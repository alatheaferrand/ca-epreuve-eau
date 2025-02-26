# frozen_string_literal: true

# Paramètres à l'envers
# Affiche ses arguments reçus à l'envers

# Utility Functions
def reverse_array(array)
  reversed = []
  i = array.length - 1
  while i >= 0
    reversed << array[i]
    i -= 1
  end
  reversed
end
  
# Error Handling
def validate_arguments
  if ARGV.empty?
    puts 'error'
    exit
  end
end

# Problem Solving
def solve
  validate_arguments
  puts reverse_array(ARGV)
end

# Execution
solve
