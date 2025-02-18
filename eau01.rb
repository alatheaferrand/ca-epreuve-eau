# Combinaison de 2 nombres
# Affiche toutes les différentes combinaisons de deux nombres entre 00 et 99 dans l'ordre croissant

# Fonction
def combinaisons(params)
    result = []
    for n in (0...params.length)
      for m in (0...params.length - 1)
        for a in (0...params.length)
          for b in (0...params.length)
            if "#{n}#{m}" < "#{a}#{b}"
              result << "#{n}#{m} #{a}#{b},"
            end
          end
        end
      end
    end
    return result.join(' ').chomp(',')
  end

# Gestion d'erreur
if !ARGV.empty?
    puts 'error'
    exit
  end

# Parsing
chiffres = ('0'..'9').to_a

# Resolution
resultat = combinaisons(chiffres)

# Resultat
puts resultat
