# String dans string
# Détermine si une chaîne de caractères est contenu dans une autre chaîne
# Affiche error et quitter le programme en cas de problèmes d'arguments

# Fonction
def contient(string1, string2)
  longueur1 = string1.length
  longueur2 = string2.length

  # Parcours string1 pour chercher string2
  i = 0
  while i <= longueur1 - longueur2
    j = 0
    # Vérification caractère par caractère
    while j < longueur2 && string1[i + j] == string2[j]
      j += 1
    end
    # Si on a trouvé tout la string2 dans string1, on retourne true
    return 'true' if j == longueur2

    i += 1
  end

  return 'false'
end

# Gestion d'erreur
if ARGV.length != 2
  puts 'error'
  exit
end

# Parsing
string1 = ARGV[0]
string2 = ARGV[1]

# Resolution
resultat = contient(string1, string2)

# Resultat
puts resultat
