# Créez un programme qui affiche le contenu d’un fichier donné en argument.


# Ma fonction
def cat_file(nom_fichier)
    fichier = File.open(nom_fichier)
    afficher = fichier.read
    return afficher 
end

# Gestion erreur
(puts "error un seul fichier"; exit) if ARGV.size > 1
(puts "error fichier inaccessible"; exit) if !File.exists?(ARGV.join)

# Parsing
nom_fichier = ARGV.join

# Resolution 
afficher_contenu = cat_file(nom_fichier)

# Affichage
puts afficher_contenu