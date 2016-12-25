module TrendingEntertainmentCliApp
  class Movies < IndexScraper
    def self.selected_tmovie_to_url(number)
      "https://trakt.tv/movies/#{trendmovies[number.to_i-1].gsub(" ", "-")}"
    end

    def self.selected_amovie_to_url(number)
      "https://trakt.tv/movies/#{anticipmovies[number.to_i-1].gsub(" ", "-")}"
    end
  end
end
