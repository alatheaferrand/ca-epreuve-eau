# Majuscule
# Met en majuscule la première lettre de chaque mot d'une chaîne de caractères
# Les autres lettres devront être en minuscules
# Les mots ne sont délimités que par un espace, une tabulation ou un retour à la ligne
# Afficher error et quitter le programme en cas de problèmes d'arguments

# Fonction
def majuscule(string)
  longueur = string.length

  # Alphabets majuscules et minuscules
  majuscules = ('A'..'Z').to_a
  minuscules = ('a'..'z').to_a

  # Parcours string
  i = 0
  result = ""
  nouveau_mot = true # Par défaut sur nouvea mot, donc premiere lettre rencontrée en majuscule

  while i < longueur
    char = string[i]

    # Vérifier si c'est une lettre
    lettre = false
    for n in (0...minuscules.length)
      if char == minuscules[n] || char == majuscules[n]
        lettre = true
        break
      end
    end

    # Appliquer la transformation
    if lettre
      for n in (0...minuscules.length)
        if char == minuscules[n]
          if nouveau_mot
            result << majuscules[n] # Convertir en majuscule si nouveau mot
          else
            result << minuscules[n]
          end
          break
        elsif char == majuscules[n]
          if nouveau_mot
            result << majuscules[n] # Rester en majuscule si nouveau mot
          else
            result << minuscules[n]
          end
          break
        end
      end
      nouveau_mot = false  # Désactive ce flag après la première lettre d'un nouveau mot
    else
    result << char # Ajoute les caractères spéciaux sans modification
      nouveau_mot = true # Réactive pour le prochain mot
    end

    i += 1
  end
  return result
end

# Gestion d'erreur
if ARGV.empty? || ARGV[0] =~ (/\A\d+.\d*\z/)
  puts 'error'
  exit
end

# Parsing
string = ARGV[0]

# Resolution
resultat = majuscule(string)

# Resultat
puts resultat
