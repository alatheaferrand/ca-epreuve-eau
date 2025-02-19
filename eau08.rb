# Chiffres only
# Détermine si une chaîne de caractères ne contient que des chiffres
# Affiche error et quitter le programme en cas de problèmes d'arguments

# Fonction
def chiffres_only(string)
  longueur = string.length
  chiffres = ('0'..'9').to_a

  i = 0
  while i < longueur
    # Vérifier si string[i] est un chiffre
    est_chiffre = false
    for n in (0...chiffres.length)
      if string[i] == chiffres[n]
        est_chiffre = true
        break
      end
    end

    # Si un caractère n'est pas un chiffre, on retourne false
    return false unless est_chiffre

    i += 1
  end

  return true # Si toute la boucle passe, c'est que la chaîne ne contient que des chiffres
end


# Gestion d'erreur
if ARGV.empty? || ARGV.length > 1
  puts 'error'
  exit
end

# Parsing
string = ARGV[0]

# Resolution
resultat = chiffres_only(string)

# Resultat
puts resultat
