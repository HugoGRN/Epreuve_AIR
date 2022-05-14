# Créez un programme qui transforme un tableau de chaînes de caractères en une seule chaîne de caractères.
# Espacés d’un séparateur donné en dernier argument au programme.

# Ma fonction
def only_string(array_sting, separateur)
    only_str = ""
    array_sting.each { |i| only_str << i + separateur }
    return only_str.capitalize
end

# Gestion d'erreur
(puts "error"; exit) if ARGV.size < 2

# Parsing
array = ARGV
sep = ARGV.pop

# Résolution
concat = only_string(array, sep)

# Affichage
puts concat