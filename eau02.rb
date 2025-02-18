# Paramètres à l'envers
# Affiche ses arguments reçus à l'envers

# Fonction
def lire_a_lenvers()
  arguments = []
  i = ARGV.length - 1
  while i >= 0
    arguments << ARGV[i]
    i -= 1
  end
  return arguments
end
  
# Gestion d'erreur
if ARGV.empty?
  puts 'error'
  exit
end

# Parsing

# Resolution
resultat = lire_a_lenvers()

# Resultat
puts resultat
