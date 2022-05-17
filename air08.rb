# Créez un programme qui fusionne deux listes d’entiers triées en les gardant triées, les deux listes seront séparées par un “fusion”.

# Ma fonction
def fusion_trie(array, array2)
    array.concat(array2)
    sorted = false

    while !sorted
        sorted = true
        (0...array.size-1).each do |i|
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
                sorted = false
            end
        end
    end
   return array.join(" ")

end

# Gestion erreur
(puts "error add fusion"; exit) if !ARGV.include?("fusion")
(puts "error need more argument"; exit) if ARGV.size < 4

# Parsing
liste = ARGV
fusion = liste.index("fusion")
array = liste[0...fusion]
array2 = liste[fusion+1..-1]

# Resolution 
melanger_tableau_trier = fusion_trie(array, array2)

# Affichage
puts melanger_tableau_trier