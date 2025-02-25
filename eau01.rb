# frozen_string_literal: true

# Combinaison de 2 nombres
# Affiche toutes les différentes combinaisons de deux nombres entre 00 et 99 dans l'ordre croissant

# Resolution
def format_numbers(number)
  number < 10 ? "0#{number}" : number.to_s
end

def generate_pairs_combinations
  result = []
  (0..98).each do |i|
    ((i + 1)..99).each { |j| result << "#{format_numbers(i)} #{format_numbers(j)}" }
  end
  result
end

def display_pairs_combinations
  puts generate_pairs_combinations.join(', ')
end

# Affichage
display_pairs_combinations
