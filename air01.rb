# Créez un programme qui découpe une chaîne de caractères en tableau en fonction du séparateur donné en 2e argument.

# Ma fonction
def decoupe_la_string(string_a_couper, string_separateur)    
    tableau = []
    string_a_couper.each_line(string_separateur) { |mot| tableau << mot }
    return tableau
end

# Gestion d'erreur
(puts "error, rentrer un deuxieme argument"; exit) if ARGV.size != 2
(puts "error du deuxieme argument"; exit) if !ARGV[0].include?(ARGV[1])

# Résolution
split = decoupe_la_string(ARGV[0], ARGV[1])

# Affichage
puts split