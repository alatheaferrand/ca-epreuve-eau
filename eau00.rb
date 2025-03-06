# frozen_string_literal: true

# Combinaisons de 3 chiffres
# Affiche toutes les différentes combinaisons possibles de trois chiffres
# dans l'ordre croissant, dans l'ordre croissant

# ========================
# Problem Solving
# ========================
def three_digit_combinations()
  result = []
  (0..9).each do |i|
    (i + 1..9).each do |j|
      (j + 1..9).each { |k| result << "#{i}#{j}#{k}" }
    end
  end
  result
end

# ========================
# Execution
# ========================
puts three_digit_combinations().join(', ')
