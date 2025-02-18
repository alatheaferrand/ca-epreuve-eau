# Majuscule sur deux
# Affiche une lettre sur 2 en majuscule
# Seule les lettres (A-Z, a-z) sont prises en compte
# Affiche error et quitter le programme en cas de problèmes d'arguments

# String dans string
# Détermine si une chaîne de caractères est contenu dans une autre chaîne
# Affiche error et quitter le programme en cas de problèmes d'arguments

# Fonction
def contient(string)
    longueur = string.length

    # Alphabets majuscules et minuscules
    majuscules = ('A'..'Z').to_a
    minuscules = ('a'..'z').to_a
  
    # Parcours string
    i = 0
    result = ""
    position_lettre = 0 # Compteur qui ignore les caractères qui ne sont pas des lettres

     while i < longueur
      lettre = false # Flag pour savoir si on a rencontré une lettre

      # Vérification si minuscule
      for n in (0...minuscules.length)
        if minuscules[n] == string[i]
          if position_lettre % 2 == 0
            result << majuscules[n]
          else
            result << minuscules[n]
          end
          position_lettre += 1
          lettre = true
          break
        end
      end

      # Vérification si majuscule
      for n in (0...majuscules.length)
        if majuscules[n] == string[i]
          if position_lettre % 2 != 0
            result << minuscules[n]
          else
            result << majuscules[n]
          end
          position_lettre += 1
          lettre = true
          break
        end
      end

      # Si ce n'est pas une lettre (lettre = false), on l'affiche tel quel
      result << string[i] if !lettre

      i += 1
    end
  
    return result
  end
  
  # Gestion d'erreur
  if ARGV.length != 1 || ARGV[0] =~ (/\A\d*.\d*\z/)
    puts 'error'
    exit
  end
  
  # Parsing
  string = ARGV[0]
  
  # Resolution
  resultat = contient(string)
  
  # Resultat
  puts resultat
  