module TrendingEntertainmentCliApp
  class Movies < IndexScraper
    def self.selected_movie_to_url(number)
      url = "https://trakt.tv/movies/#{all[number.to_i-1].url}"
      puts url
      TrendingEntertainmentCliApp::DetailsScraper.scrape_details(url)
    end
  end
end
