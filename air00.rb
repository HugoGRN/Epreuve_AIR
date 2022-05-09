# Créez un programme qui découpe une chaîne de caractères en tableau (séparateurs : espaces, tabulations, retours à la ligne).

# Ma fonction
def decoupe_string(string_a_couper, string_separateur)    
    tableau = []
    string_a_couper.each_line(string_separateur) { |mot| tableau << mot.chomp(string_separateur)}
    return tableau
end

# Gestion d'erreur
(puts "error"; exit) if ARGV.size != 1

# Résolution
split = decoupe_string(ARGV[0], ' ')

# Affichage
puts split