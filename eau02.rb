# frozen_string_literal: true

# Paramètres à l'envers
# Affiche ses arguments reçus à l'envers

# ========================
# Utility Functions
# ========================
def reverse_arguments(args)
  reversed = []
  i = args.length - 1
  while i >= 0
    reversed << args[i]
    i -= 1
  end
  reversed
end

# ========================
# Error Handling
# ========================
def check_arguments_presence(args)
  return if args.size >= 2

  puts 'error: at least 2 arguments required'
  exit
end

# ========================
# Parsing Arguments
# ========================
def parse_arguments
  ARGV
end

# ========================
# Problem Solving
# ========================
def reverse_and_display_arguments
  args = parse_arguments
  check_arguments_presence(args)
  puts reverse_arguments(args)
end

# ========================
# Execution
# ========================
reverse_and_display_arguments
