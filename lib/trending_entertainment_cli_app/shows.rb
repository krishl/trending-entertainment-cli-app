module TrendingEntertainmentCliApp
  class Shows < IndexScraper
    def self.selected_show_to_url(number)
      url = "https://trakt.tv/shows/#{all[number.to_i-1].name.gsub(" ", "-").gsub(/\W/, "-").gsub(/\W{2,}/, "-")}"
      TrendingEntertainmentCliApp::DetailsScraper.scrape_details(url)
    end
  end
end
