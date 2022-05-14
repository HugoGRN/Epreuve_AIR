# Créez un programme qui retourne la valeur d’une liste qui n’a pas de paire.

# Ma fonction
def intrus(tableau)
    paire = Hash.new(0)
    tableau.each { |valeur| paire[valeur] +=1 }
    return paire.key(1)
end

# Gestion d'erreur
(puts "error"; exit) if ARGV.size <= 2

# Résolution
intrus_de_la_liste = intrus(ARGV)

# Affichage
puts intrus_de_la_liste