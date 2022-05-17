# Créez un programme qui décale tous les éléments d’un tableau vers la gauche. Le premier élément devient le dernier à chaque rotation.

# Ma fonction
def decale_element(tableau)
    new_tableau = []
    tableau.map.with_index { |element, index| new_tableau.insert(index - 1, element) }
    tableau.replace(new_tableau)
    return tableau.join(" ")
end

# Gestion erreur
(puts "error need more argument"; exit) if ARGV.size <= 2

# Parsing
liste = ARGV

# Resolution 
rotation_vers_gauche = decale_element(liste)

# Affichage
puts rotation_vers_gauche