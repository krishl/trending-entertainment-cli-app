module TrendingEntertainmentCliApp
  class Shows < IndexScraper
    def self.selected_tshow_to_url(number)
      "https://trakt.tv/shows/#{all[number.to_i-1].gsub(" ", "-")}"
    end

    def self.selected_ashow_to_url(number)
      "https://trakt.tv/shows/#{all[number.to_i-1].gsub(" ", "-")}"
    end
  end
end
