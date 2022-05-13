# Créez un programme qui transforme un tableau de chaînes de caractères en une seule chaîne de caractères.
# Espacés d’un séparateur donné en dernier argument au programme.

# Ma fonction
def only_string(array_sting, separateur)
    only_str = ""
    str = array_sting[0...array_sting.length - 1]
    str.each { |i| only_str << i + separateur }
    return only_str.capitalize
end

# Gestion d'erreur
(puts "error"; exit) if ARGV.size < 2

# Résolution
concat = only_string(ARGV, " ")

# Affichage
puts concat