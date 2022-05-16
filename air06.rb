# Créez un programme qui supprime d’un tableau tous les éléments qui ne contiennent pas une autre chaîne de caractères.

# Ma fonction
def supprime_element(array_string, string)
    liste_delete = []
    array_string.each { |mot| if !mot.include?(string) ; liste_delete << mot end }
    liste_delete.each { |mot| array_string.delete(mot) }
    return liste_delete.join(", ")
end

# Gestion erreur
(puts "error only word"; exit) if ARGV.join(" ").match?(/\d/)
(puts "error need more argument"; exit) if ARGV.size < 3

# Parsing
liste_mot = ARGV
lettre = liste_mot.pop

# Resolution 
controle_pass_sanitaire = supprime_element(liste_mot, lettre)

# Affichage
puts controle_pass_sanitaire