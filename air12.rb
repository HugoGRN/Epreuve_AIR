# Créez un programme qui trie une liste de nombres. Votre programme devra implémenter l’algorithme du tri rapide (QuickSort).

# Ma fonction
def tri_rapide(liste_nombre)
    return liste_nombre if liste_nombre.size < 2
    pivot = liste_nombre.sample
    premier, dernier = liste_nombre.partition { |element| element < pivot }
    tri_rapide(premier) + tri_rapide(dernier)
end

# Gestion erreur
(puts "error only integer"; exit) if !ARGV.join(' ').match?(/\d/)

# Parsing
tableau = ARGV

# Resolution 
le_roi_des_tris = tri_rapide(tableau).join(' ')

# Affichage
p le_roi_des_tris