# Créez un programme qui vérifie si les exercices de votre épreuve de l’air sont
# présents dans le répertoire et qu’ils fonctionnent (sauf celui là). Créez au moins un test pour chaque exercice.

# Ma fonction

def check_file(name_file, error, success)
    resultat = []
    name_file.each do |exercice|
        if File.exists?(exercice)
            resultat << success
        else 
            resultat << error
        end
    end
    return resultat
end

def check_run(error, success)
    resultat = []

    air00 = {:entrer => `ruby air00.rb "Bonjour les gars"`, :sortie => "Bonjour\nles\ngars\n"}
    air01 = {:entrer => `ruby air01.rb "Crevette magique dans la mer des étoiles" "la"`, :sortie => "Crevette magique dans la\n mer des étoiles\n"}
    air02 = {:entrer => `ruby air02.rb "je" "teste" "des" "trucs" " "`, :sortie => "Je teste des trucs \n"}
    air03 = {:entrer => `ruby air03.rb "bonjour" "monsieur" "bonjour"`, :sortie => "monsieur\n"}
    air04 = {:entrer => `ruby air04.rb "Hello milady,   bien ou quoi ??"`, :sortie => "Helo milady, bien ou quoi ?\n"}
    air05 = {:entrer => `ruby air05.rb "1" "2" "3" "4" "5" "+2"`, :sortie => "3 4 5 6 7\n"}
    air06 = {:entrer => `ruby air06.rb "Michel" "Albert" "Thérèse" "Benoit" "t"`, :sortie => "Michel\n"}
    air07 = {:entrer => `ruby air07.rb "1" "3" "4" "2"`, :sortie => "1 2 3 4\n"}
    air08 = {:entrer => `ruby air08.rb 10 20 30 fusion 15 25 35`, :sortie => "10 15 20 25 30 35\n"}
    air09 = {:entrer => `ruby air09.rb Michel Albert Thérèse Benoit`, :sortie => "Albert Thérèse Benoit Michel\n"}
    air10 = {:entrer => `ruby air10.rb air10.txt`, :sortie => "A jamais les premiers\n"}
    air11 = {:entrer => `ruby air11.rb 0 5`, :sortie => "\"    0\"\n\"   000\"\n\"  00000\"\n\" 0000000\"\n\"000000000\"\n1\n"}
    air12 = {:entrer => `ruby air12.rb 6 5 4 3 2 1`, :sortie => "\"1 2 3 4 5 6\"\n"}

    exo = [air00, air01, air02, air03, air04, air05, air06, air07, air08, air09, air10, air11, air12]
    exo.map do |exercice|
        if exercice[:entrer] == exercice[:sortie]
            resultat << success
        else
            resultat << error
        end
    end
    return resultat
end

def meta_exercice(test1, test2, liste_fichier)
    a = 0
    for i in (0..12)
        puts "#{liste_fichier[i]} (1/2) : #{test1[i]}"
        puts "#{liste_fichier[i]} (2/2) : #{test2[i]}"
        if test1[i] and test2[i] == "\e[32msuccess\e[0m"
            a += 2
        elsif test1[i] or test2[i] == "\e[32msuccess\e[0m"
            a += 1
        end
    end
    puts "total success : (#{a}/26)"
end

def red(text)   ; "\e[31m#{text}\e[0m"  end
def green(text) ; "\e[32m#{text}\e[0m"  end

# Gestion erreur
(puts "error aucun argument attendu"; exit) if ARGV.size != 0

# Parsing
fichier_air = Dir['**/*.rb'].sort.select { |fichier| File.file?(fichier) }
fichier_air = fichier_air[0..-3]
failure = red("failure")
success = green("success")
resultat_test1 = check_file(fichier_air, failure, success)
resultat_test2 = check_run(failure, success)

# Resolution 
meta_exercice(resultat_test1, resultat_test2, fichier_air)