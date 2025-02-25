# frozen_string_literal: true

# Combinaisons de 3 chiffres
# Affiche toutes les différentes combinaisons possibles de trois chiffres
# dans l'ordre croissant, dans l'ordre croissant

# Résolution
def display_combinations
  result = []
  (0..7).each do |i|
    (i + 1..8).each do |j|
      (j + 1..9).each { |k| result << "#{i}#{j}#{k}" }
    end
  end
  puts result.join(', ')
end

# Affichage
display_combinations
