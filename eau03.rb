# frozen_string_literal: true

# Suite de Fibonacci
# Affiche le N-ème élément de la célèbre suite de Fibonacci
# (0, 1, 1, 2) étant le début de la suite
# et le premier élément état à l'index 0
# Affiche -1 si le paramètre est négatif ou mauvais

# ========================
# Utility Functions
# ========================
def fibonacci_iterative(index)
  return index if index < 2

  previous, current = 0, 1

  (2..index).each do
    previous, current = current, previous + current
  end

  current
end

# ========================
# Error Handling
# ========================
def numeric?(number)
  !Integer(number, exception: false).nil?
end

def single_argument?(arguments)
  arguments.size == 1
end

def positive_integer?(number)
  number.to_i >= 0
end

def validate_arguments(arguments)
  return '-1: one argument required' unless single_argument?(arguments)
  return '-1: argument must be an integer' unless numeric?(arguments[0])
  return '-1: argument must be positive' unless positive_integer?(arguments[0])

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
def fibonacci_at_index()
  arguments = retrieve_arguments()
  error_message = validate_arguments(arguments)
  return error_message if error_message

  index = arguments[0].to_i
  fibonacci_iterative(index)
end

# ========================
# Execution
# ========================
puts fibonacci_at_index()
