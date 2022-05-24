# Afficher un escalier constitué d’un caractère et d’un nombre d’étages donné en paramètre.

# Ma fonction
def escalier(symbole, etage)
    1.upto(etage) { |i|
        espace = " " * (etage-i)
        pyramide = symbole * (i*2 - 1)
        p espace + pyramide }
end

# Gestion erreur
(puts "error argument manquant"; exit) if ARGV.size < 2

# Parsing
symbole = ARGV[0]
etage = ARGV[1].to_i

# Resolution / Affichage
afficher_pyramide = p escalier(symbole, etage)