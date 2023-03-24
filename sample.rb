def saisir_commentaire
  puts "Veuillez donner une note sur une échelle de 1 à 5"
    point = gets.to_i
    while true
      if point <= 0 || point > 5
        puts "Veuillez donner une note sur une échelle de 1 à 5"
        point = gets.to_i
      else
        puts "Saisissez vos commentaires."
        comment = gets
        post = "point：#{point}　commentaire：#{comment}"
        File.open("data.txt", "a") do |file|
          file.puts(post)
        end
        break
      end
    end
  end
def afficher_commentaire
  puts "Résultats à ce jour."
    File.open("data.txt", "r") do |file|
      file.each_line do |line|
        puts line
      end
    end
  end    
while true
  puts "Sélectionnez le processus que vous souhaitez mettre en œuvre"
  puts "1 : Saisir les points d'évaluation et les commentaires."
  puts "2 : Vérifier les résultats obtenus jusqu'à présent."
  puts "3 : cesser."
  num = gets.to_i

  case num
  when 1
    saisir_commentaire
  when 2
    afficher_commentaire
  when 3
    puts "Fin de processus."
    break
  else
    puts "Veuillez saisir de 1 à 3"
  end
end