# frozen_string_literal: true

# Combinaisons de 3 chiffres
# Affiche toutes les différentes combinaisons possibles de trois chiffres
# dans l'ordre croissant, dans l'ordre croissant

# ========================
# Problem Solving
# ========================
def number_combinations
  result = []
  (0..7).each do |i|
    (i + 1..8).each do |j|
      (j + 1..9).each { |k| result << "#{i}#{j}#{k}" }
    end
  end
  result
end

# ========================
# Execution
# ========================
puts number_combinations.join(', ')
