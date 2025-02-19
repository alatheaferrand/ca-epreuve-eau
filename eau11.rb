# Différence minimum absolue
# Affiche la différence minimum absolue entre deux éléments d'un tableau
# Constitué uniquement de nombres. Nombres négatifs acceptés.
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

def trier_nombres(nombres)
  i = 0
  while i < nombres.length - 1
    j = 0
    while j < nombres.length - 1 - i
      if nombres[j] > nombres[j + 1]
        # Echanger les deux éléments si mal triés
        temporaire = nombres[j]
        nombres[j] = nombres[j + 1]
        nombres[j + 1] = temporaire
      end
      j += 1
    end
    i +=1
  end
  return nombres
end

def calcul_diff_min_absolue(nombres_triés)
  # Initialisation de la plus petite différence absolue avec les 2 premiers éléments des nombres_triés
  result = nombres_triés[1] - nombres_triés[0]
  if result < 0 # Si negative, on le rend positif ("absolue")
    result *= -1
  end

  i = 1
  while i < nombres_triés.length - 1
    diff = nombres_triés[i + 1] - nombres_triés[i]

    if diff < 0
      diff *= -1
    end

    if diff < result
      result = diff
    end
    i += 1
  end
  return result
end

# Gestion d'erreur
if ARGV.empty? || ARGV.length < 2
  puts 'error'
  exit
end

# Parsing
tableau = ARGV

# Resolution
nombres = convert_to_nombres(tableau)
nombres_triés = trier_nombres(nombres)
resultat = calcul_diff_min_absolue(nombres_triés)

# Resultat
puts resultat
