# frozen_string_literal: true

# Suite de Fibonacci
# Affiche le N-ème élément de la célèbre suite de Fibonacci
# (0, 1, 1, 2) étant le début de la suite
# et le premier élément état à l'index 0
# Affiche -1 si le paramètre est négatif ou mauvais

# ========================
# Utility Functions
# ========================
def numeric?(arg)
  !Integer(arg, exception: false).nil?
end

def fibonacci(n, memo = {})
  return n if n < 2
  memo[n] ||= fibonacci(n - 1, memo) + fibonacci(n - 2, memo)
end

# ========================
# Error Handling
# ========================
def validate_argument(args)
  if args.size != 1
    puts 'error: 1 argument required'
    exit
  end

  unless numeric?(args[0])
    puts 'error: argument must be numeric'
    exit
  end

  if args[0].to_i.negative?
    puts 'error: argument must be a positive integer'
    exit
  end
end

# ========================
# Parsing Arguments
# ========================
def parse_argument
  args = ARGV
  validate_argument(args)
  args[0].to_i
end

# ========================
# Problem Solving
# ========================
def compute_fibonacci_result
  index = parse_argument
  fibonacci(index)
end

# ========================
# Execution
# ========================
puts compute_fibonacci_result
