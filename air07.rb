# Créez un programme qui ajoute à une liste d’entiers triée un nouvel entier tout en gardant la liste triée dans l’ordre croissant.
# Le dernier argument est l’élément à ajouter.

# Ma fonction
def trie_insertion(tableau, new_element)
    plus_proche = tableau.bsearch { |nb| nb >= new_element }
    position = tableau.index(plus_proche)
    tableau.insert(position, new_element)
    return tableau.join(" ")
end

# Gestion erreur
(puts "error need more argument"; exit) if ARGV.size <= 2

# Parsing
tableau = ARGV
new_element = tableau.pop

# Resolution 
insertion_tableau_trie = trie_insertion(tableau, new_element)

# Affichage
puts insertion_tableau_trie