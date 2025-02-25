# frozen_string_literal: true

# Combinaisons de 3 chiffres
# Affiche toutes les différentes combinaisons possibles de trois chiffres
# dans l'ordre croissant, dans l'ordre croissant

# Résolution
result = []
i = 0
while i <= 7
  j = i + 1
  while j <= 8
    k = j + 1
    while k <= 9
      result << "#{i}#{j}#{k}"
      k += 1
    end
    j += 1
  end
  i += 1
end

# Affichage
puts result.join(', ')
