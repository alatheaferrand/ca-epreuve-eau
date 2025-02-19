# Index wanted
# Affiche le premier index d'un élément recherché dans un tableau
# Le tableau est constitué de tous les arguments sauf le dernier
# L'élément recherché est le dernier argument
# Afficher -1 si l'élément n'est pas trouvé
# Afficher error et quitter le programme en cas de problèmes d'arguments

# Fonction
def index_wanted(element, tableau)
  i = 0
  while i < tableau.length
    if tableau[i] == element
      return i
    end
    i += 1
  end
  return -1 # Si on arrive ici, c'est que l'élément n'a pas été trouvé
end

# Gestion d'erreur
if ARGV.length < 2
  puts 'error'
  exit
end

# Parsing
element = ARGV[-1]
tableau = ARGV[0...-1]

# Resolution
resultat = index_wanted(element, tableau)

# Resultat
puts resultat
