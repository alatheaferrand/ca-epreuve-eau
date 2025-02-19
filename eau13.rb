# Tri par sélection
# Trie une liste de nombres
# Implémente l'algorithme du tri par sélectoin
# Utiliser une fonction de cette forme :
# my_selection_sort(array) {
#   votre algorithme
#  return (new_array)
# }
# Afficher error et quitter le programme en cas de problèmes d'arguments

# Fonctions
def convert_to_nombres(tableau)
  # Vérifier que les éléments du tableau sont des nombres et les convertir en nombres
  nombres = []
  for i in (0...tableau.length)
    unless tableau[i] =~ /\A[-+]?\d+\z/
      puts 'error'
      exit
    end
    nombres << tableau[i].to_i
  end
  return nombres
end
  
def my_selection_sort(array)
  i = 0
  while i < array.length - 1
    min_index = i
    j = i + 1

    while j < array.length
      if array[j] < array[min_index] # Trouver l'index du plus petit élément
        min_index = j
      end
      j += 1
    end

    # Echanger l'élément trouvé avec l'élément à la position actuelle
    if min_index != i
      temporaire = array[i]
      array[i] = array[min_index]
      array[min_index] = temporaire
    end

    i += 1
  end
  return array
end

def array_to_string(new_array)
  i = 0
  string = ""
  while i < new_array.length
    string << new_array[i].to_s
    string << ' ' if i < new_array.length - 1
    i += 1
  end
  return string
end
  
# Gestion d'erreur
if ARGV.empty? || ARGV.length < 2
puts 'error'
exit
end

# Parsing
tableau = ARGV

# Resolution
array = convert_to_nombres(tableau)
new_array = my_selection_sort(array)
resultat = array_to_string(new_array)

# Resultat
puts resultat
  