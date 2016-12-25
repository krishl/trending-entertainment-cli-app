module TrendingEntertainmentCliApp
  class Shows < IndexScraper
    def self.selected_show_to_url(number)
      "https://trakt.tv/shows/#{all[number.to_i-1].name.gsub(" ", "-")}"
    end
  end
end
