# Prochain nombre premier
# Affiche le premier nombre premier supérieur au nombre donné en argument
# Affiche -1 si le paramètre est négatif ou mauvais

# Fonction
def prochain_premier(params)

  # Cas particuliers
  if params <= 1
    return 2
  elsif params == 2
    return 3
  end

  # Initialise params au nombre impair supérieur au nombre donné
  if params % 2 == 0
    params += 1
  else
    params += 2
  end

  # Boucle infinie jusqu'à trouver un nombre premier
  while true
    diviseur = false
    i = 3

    # Vérifie si params est un nombre premier
    while i * i <= params
      if params % i == 0
        diviseur = true
        break # On sort de cette boucle si on trouve un diviseur
      end
      i += 2 # On teste uniquement les nombres impairs
    end

    # Si aucun diviseur n'a été trouvé, on retourne params
    return params unless diviseur

    # Sinon, on passe au prochain impair et on recommance la boucle
    params += 2
  end  
end

# Gestion d'erreur
if ARGV.length != 1 || ARGV[0] !~ (/\A\d+\z/)
  puts '-1'
  exit
end

# Parsing
params = ARGV[0].to_i

# Resolution
resultat = prochain_premier(params)

# Resultat
puts resultat
