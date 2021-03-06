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
        puts "--- TRENDING TV SHOWS ---"
        TrendingEntertainmentCliApp::IndexScraper.all_clear
        TrendingEntertainmentCliApp::IndexScraper.scrape_index("https://trakt.tv/shows/trending")
        TrendingEntertainmentCliApp::IndexScraper.all.each.with_index(1) do |element, index|
          puts "#{index}. #{element.name} (#{element.year})"
        end
        puts "Type the number of the show for more details. Alternatively, type 'back' to go back to the main menu or 'exit' to exit."
        number = gets.chomp
        if number.to_i.between?(1, 37)
          TrendingEntertainmentCliApp::IndexScraper.scrape_url("https://trakt.tv/shows/trending", number)
        elsif number == "back"
          main_menu
        elsif number == "exit"
          farewell
        else
          puts "Please enter a valid number!"
          shows
        end
      when "2"
        puts "--- MOST ANTICIPATED TV SHOWS ---"
        TrendingEntertainmentCliApp::IndexScraper.all_clear
        TrendingEntertainmentCliApp::IndexScraper.scrape_index("https://trakt.tv/shows/anticipated")
        TrendingEntertainmentCliApp::IndexScraper.all.each.with_index(1) do |element, index|
          puts "#{index}. #{element.name} (#{element.year})"
        end
        puts "Type the number of the show for more details. Alternatively, type 'back' to go back to the main menu or 'exit' to exit."
        number = gets.chomp
        if number.to_i.between?(1, 37)
          TrendingEntertainmentCliApp::IndexScraper.scrape_url("https://trakt.tv/shows/anticipated", number)
        elsif number == "back"
          main_menu
        elsif number == "exit"
          farewell
        else
          puts "Please enter a valid number!"
          shows
        end
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
      puts "Would you like to (1) view currently trending movies or (2) view a list of the most anticipated upcoming movies?"
      puts "Make your selection by typing either '1' or '2'. Alternatively, type 'back' to go back to the main menu or 'exit' to exit."
      answer = gets.chomp
      case answer
      when "1"
        puts "--- TRENDING MOVIES ---"
        TrendingEntertainmentCliApp::IndexScraper.all_clear
        TrendingEntertainmentCliApp::IndexScraper.scrape_index("https://trakt.tv/movies/trending")
        TrendingEntertainmentCliApp::IndexScraper.all.each.with_index(1) do |element, index|
          puts "#{index}. #{element.name} (#{element.year})"
        end
        puts "Type the number of the movie for more details. Alternatively, type 'back' to go back to the main menu or 'exit' to exit."
        number = gets.chomp
        if number.to_i.between?(1, 37)
          TrendingEntertainmentCliApp::IndexScraper.scrape_url("https://trakt.tv/movies/trending", number)
        elsif number == "back"
          main_menu
        elsif number == "exit"
          farewell
        else
          puts "Please enter a valid number!"
          movies
        end
      when "2"
        puts "--- MOST ANTICIPATED MOVIES ---"
        TrendingEntertainmentCliApp::IndexScraper.all_clear
        TrendingEntertainmentCliApp::IndexScraper.scrape_index("https://trakt.tv/movies/anticipated")
        TrendingEntertainmentCliApp::IndexScraper.all.each.with_index(1) do |element, index|
          puts "#{index}. #{element.name} (#{element.year})"
        end
        puts "Type the number of the show for more details. Alternatively, type 'back' to go back to the main menu or 'exit' to exit."
        number = gets.chomp
        if number.to_i.between?(1, 37)
          TrendingEntertainmentCliApp::IndexScraper.scrape_url("https://trakt.tv/movies/anticipated", number)
        elsif number == "back"
          main_menu
        elsif number == "exit"
          farewell
        else
          puts "Please enter a valid number!"
          movies
        end
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
    abort("Have a great day!")
  end
end
