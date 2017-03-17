# File.open("files-lessons/teams.txt", 'w+') { |f| f.write("Twins, Astros, A's")}


File.open("files-lessons/teams.txt" , 'w+')  { |f| f.write("Twins, Astros, Mets, Yankees") }

# file_to_save = File.new("files-lessons/other_teams.txt")
# file_to_save.puts("A, B, C")
# file_to_save.close