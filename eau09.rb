# Entre min et max
# Affche toutes les valeurs comprises entre deux nombres dans l'ordre croissant
# Min inclus, max exclus
# Affiche error et quitter le programme en cas de problèmes d'arguments

# Fonctions
def entre_min_et_max(min, max)
  if min > max
    min, max = max, min
  end

  result = []
  i = min
  while i < max
    result << i
    i += 1
  end
  return result
end

def array_to_string(array)
  i = 0
  string = ""
  while i < array.length
    string << array[i].to_s
    string << ' ' if i < array.length - 1
    i += 1
  end
  return string
end


# Gestion d'erreur
if ARGV.empty? || ARGV.length != 2 || ARGV[0] !~ (/\A\d+\z/) || ARGV[1] !~ (/\A\d+\z/) || ARGV[0] == ARGV[1]
  puts 'error'
  exit
end

# Parsing
min = ARGV[0].to_i
max = ARGV[1].to_i

# Resolution
result = entre_min_et_max(min, max)
resultat = array_to_string(result)

# Resultat
puts resultat
