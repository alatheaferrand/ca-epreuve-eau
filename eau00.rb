# Combinaisons de 3 chiffres
# Affiche toutes les différentes combinaisons possibles de trois chiffres dans l'ordre croissant

# Fonctions
def combinaisons(params)
  result = []
  for n in (0...params.length - 2 )
    for m in (n+1...params.length - 1)
      for p in (m+1...params.length)
          result << "#{params[n]}#{params[m]}#{params[p]}"
      end
    end
  end
  return result.join(' ')
end

# Gestion d'erreur
if !ARGV.empty?
  puts 'error'
  exit
end

# Parsing
chiffres = ('0'..'9').to_a

# Résolution
resultat = combinaisons(chiffres)

# Affiche du résultat
puts resultat
