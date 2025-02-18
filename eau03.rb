# Suite de Fibonacci
# Affiche le N-ème élément de la célèbre suite de Fibonacci
# (0, 1, 1, 2) étant le début de la suite
# et le premier élément état à l'index 0
# Affiche -1 si le paramètre est négatif ou mauvais

# Fonction
def fibonacci(index)
  index = index.to_i
  return index if index < 2 # car index 0 > resultat 0 et index 1 > resultat 1

  prev = 0
  curr = 1
  i = 2
  
  while i <= index
    prev, curr = curr, prev + curr
    i += 1
  end
  return curr
end

# Gestion d'erreur
if ARGV.length != 1 || ARGV[0] !~ (/\A\d+\z/)
  puts '-1'
  exit
end

# Parsing
index = ARGV[0].to_i

# Resolution
resultat = fibonacci(index)

# Resultat
puts resultat
