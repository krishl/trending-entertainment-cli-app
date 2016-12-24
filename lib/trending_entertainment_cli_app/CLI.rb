class TrendingEntertainmentCliApp::CLI
  def call
    shows_or_movies
  end

  def shows_or_movies
    answer = nil
    while answer != "exit"
      puts "Welcome! What would you like to explore, TV Shows or Movies? Type 'exit' to exit."
      answer = gets.chomp.downcase
      case answer
      when "tv shows", "tv", "shows", "tvshows", "tvshow", "show"
        puts "shows"
      when "movies", "movie"
        puts "movies"
      when "exit"
        puts "Have a nice day!"
      else
        puts "Please enter a valid input!"
      end
    end
  end


end
