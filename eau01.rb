# frozen_string_literal: true

# Combinaison de 2 nombres
# Affiche toutes les différentes combinaisons de deux nombres entre 00 et 99 dans l'ordre croissant

# ========================
# Utility Functions
# ========================
# Formate un nombre à deux chiffres
def format_two_digits(number)
  format('%02d', number)
end

# ========================
# Problem Solving
# ========================
# Génère toutes les combinaisons de deux nombres entre 00 et 99 dans l'ordre croissant
def two_pair_combinations()
  result = []
  (0..99).each do |i|
    ((i + 1)..99).each { |j| result << "#{format_two_digits(i)} #{format_two_digits(j)}" }
  end
  return result
end

# ========================
# Execution
# ========================
puts two_pair_combinations().join(', ')
