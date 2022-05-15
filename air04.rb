# Créez un programme qui affiche une chaîne de caractères en évitant les caractères identiques adjacents.

# Ma fonction
def pas_identique(chaine)
    string = ""
    chaine = chaine.split("")
    chaine.each_index do |i|
        if chaine[i] != chaine[i+1]
            string << chaine[i]
        end
    end
    return string
end

# Gestion d'erreur
(puts "error"; exit) if ARGV.size > 1

# Résolution
suprime_caracteres_adjacents = pas_identique(ARGV[0])

# Affichage
puts suprime_caracteres_adjacents