# Par ordre Ascii
# Trie les éléments donnés en argument par ordre ASCII
# Afficher error et quitter le programme en cas de problèmes d'arguments

# Fonctions

# Etape 1 : Separer les nombres, les mots commençant par une lettre majuscule/minuscule
def tri_par_categorie(array)
  nombre = []
  majuscule = []
  minuscule = []

  for n in array
    if n =~ /\A[-+]?\d+\z/
      nombre << n.to_i
    elsif n =~ /\A[A-Za-z]+\z/
      if n[0] =~ /\A[A-Z]\z/
        majuscule << n
      elsif n[0] =~ /\A[a-z]\z/
        minuscule << n
      end
    else
      puts "error at argument #{n}"
      exit
    end
  end
  return [nombre, majuscule, minuscule]
end

def tri_dans_categorie(array)
  i = 0
  while i < array.length
    trié = false # Flag pour arrêter le tri quand tout est trié
    while !trié # Tant que trié est false
      trié = true
      j = 0
      while j < array[i].length - 1    
        if array[i][j] > array[i][j + 1]
          # Echanger les deux éléments si mal triés
          temporaire = array[i][j]
          array[i][j] = array[i][j + 1]
          array[i][j + 1] = temporaire
          trié = false # On a fait un échange, donc on continue le tri
        end
        j += 1
      end
    end
    i += 1
  end
  return array
end

def array_to_string(new_array) # Au lieu de array.join(' ') pour les strings
  string = ""
  n = new_array[0] + new_array[1] + new_array[2]

  i = 0
  while i < n.length
    string << n[i].to_s
    string << ' ' if i < n.length - 1
    i += 1
  end

  return string
end

# Gestion d'erreur
if ARGV.empty?
  puts 'error'
  exit
end

# Parsing
array = ARGV

# Resolution
array = tri_par_categorie(array)
new_array = tri_dans_categorie(array)
resultat = array_to_string(new_array)

# Resultat
puts resultat
