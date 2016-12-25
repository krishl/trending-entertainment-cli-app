module TrendingEntertainmentCliApp
  class Movies < IndexScraper
    def self.selected_movie_to_url(number)
      puts "https://trakt.tv/movies/#{all[number.to_i-1].url}"
    end
  end
end
