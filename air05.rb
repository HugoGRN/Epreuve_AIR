# Créez un programme qui est capable de reconnaître et de faire une opération (addition ou soustraction) sur chaque entier d’une liste.

# Ma fonction
def operation(liste)
    operation = liste.last
    chiffres = liste.pop
        if operation.include?("+")
        liste.map! { |nb| nb.to_i + operation.to_i }
        else 
            liste.map! { |nb| nb.to_i - operation[1].to_i }
        end
    return liste.join(" ")
end

# Gestion d'erreur
(puts "error"; exit) if ARGV.size < 2
(puts "error only number"; exit) if ARGV[0].match?(/\D/)


# Resolution
chacun_entre_eux = operation(ARGV)

# Affichage
puts chacun_entre_eux