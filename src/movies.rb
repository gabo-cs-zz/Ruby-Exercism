# Store the information about movies and their corresponding release year
movies = {}
loop do
  puts "What would you like to do?\n(1.Add - 2.Update - 3.List - 4.Delete - 5.Exit): "
  op = gets.to_i
  case op
    when 1
      print 'Enter the name of the movie: '
      name = gets.chomp
      if movies[name].nil?
        print 'Enter the its release year: '
        year = gets.chomp.to_i
        movies[name] = year
      else 
        puts 'That movie already exists.'
      end
    when 2
      print 'Enter the name of the movie you want to update: '
      name = gets.chomp
      if movies[name].nil?
        puts 'That movie does not exist.'
      else 
        print 'Enter the its new info (release year): '
        year = gets.chomp.to_i
        movies[name] = year
      end
    when 3
      (movies.empty?) ? (puts "You haven't added any movie. Go ahead and add one") : (puts movies)
    when 4
      print 'Enter the name of the movie you want to delete: '
      name = gets.chomp
      if movies[name].nil?
        puts 'That movie does not exist.'
      else 
        movies.delete(name)
      end
  end
  break if op == 5
end