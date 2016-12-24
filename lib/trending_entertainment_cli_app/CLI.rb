class TrendingEntertainmentCliApp::CLI
  def main_menu
    answer = nil
    while answer != "exit"
      puts "Welcome! What would you like to explore, TV Shows or Movies? Type 'exit' to exit."
      answer = gets.chomp.downcase
      case answer
      when "tv shows", "tv", "shows", "tvshows", "tvshow", "show"
        shows
      when "movies", "movie"
        puts "movies" #placeholder for .movies
      when "exit"
        farewell
      else
        puts "Please enter a valid input!"
      end
    end
  end

  def shows
    answer = nil
    while answer != "back"
      puts "Would you like to (1) view currently trending TV Shows or (2) view a list of the most anticipated upcoming shows?"
      puts "Make your selection by typing either '1' or '2'. Alternatively, type 'back' to go back to the main menu."
      answer = gets.chomp
      case answer
      when "1"
        puts "trending_shows" #placeholder for Shows.trending_shows
      when "2"
        puts "anticipated_shows" #placeholder for Shows.anticipated_shows
      when "back"
        main_menu
      else
        puts "Please enter a valid input!"
      end
    end
  end

  def farewell
    puts "Have a nice day!"
  end


end
