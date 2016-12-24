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
        movies
      when "exit"
        farewell
      else
        puts "Please enter a valid input!"
      end
    end
  end

  def shows
    answer = nil
    while answer != ("back" || "exit")
      puts "Would you like to (1) view currently trending TV Shows or (2) view a list of the most anticipated upcoming shows?"
      puts "Make your selection by typing either '1' or '2'. Alternatively, type 'back' to go back to the main menu or 'exit' to exit."
      answer = gets.chomp
      case answer
      when "1"
        TrendingEntertainmentCliApp::Shows.scrape_trendshows
        puts "Type the number of the show for more details. Alternatively, type 'back' to go back to the main menu or 'exit' to exit."
        answer = gets.chomp
      when "2"
        TrendingEntertainmentCliApp::Shows.scrape_anticipshows
        puts "Type the number of the show for more details. Alternatively, type 'back' to go back to the main menu or 'exit' to exit."
        answer = gets.chomp
      when "back"
        main_menu
      when "exit"
        farewell
      else
        puts "Please enter a valid input!"
      end
    end
  end

  def movies
    answer = nil
    while answer != ("back" || "exit")
      puts "Would you like to (1) view currently trending TV movies or (2) view a list of the most anticipated upcoming movies?"
      puts "Make your selection by typing either '1' or '2'. Alternatively, type 'back' to go back to the main menu or 'exit' to exit."
      answer = gets.chomp
      case answer
      when "1"
        TrendingEntertainmentCliApp::Movies.scrape_trendmovies
        puts "Type the number of the movie for more details. Alternatively, type 'back' to go back to the main menu or 'exit' to exit."
        answer = gets.chomp
      when "2"
        TrendingEntertainmentCliApp::Movies.scrape_anticipmovies
        puts "Type the number of the show for more details. Alternatively, type 'back' to go back to the main menu or 'exit' to exit."
        answer = gets.chomp
      when "back"
        main_menu
      when "exit"
        farewell
      else
        puts "Please enter a valid input!"
      end
    end
  end

  def farewell
    abort("Have a nice day!")
  end
end
