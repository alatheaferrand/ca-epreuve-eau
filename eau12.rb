# Tri à bulle
# Affiche la liste des nombres triés dans l'ordre croissant
# Utiliser une fonction de cette forme :
# my_bubble_sort(array) {
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

def my_bubble_sort(array)
  i = 0
  while i < array.length - 1
    j = 0
    while j < array.length - 1 - i
      if array[j] > array[j + 1]
        # Echanger les deux éléments si mal triés
        temporaire = array[j]
        array[j] = array[j + 1]
        array[j + 1] = temporaire
      end
      j += 1
    end
    i +=1
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
new_array = my_bubble_sort(array)
resultat = array_to_string(new_array)

# Resultat
puts resultat
