class TrendingEntertainmentCliApp::Shows
  @@trendshows = []
  @@anticipshows = []

  def self.trendshows
    @@trendshows
  end

  def self.anticipshows
    @@anticipshows
  end

  def self.shows_clear
    trendshows.clear
    anticipshows.clear
  end

  def self.scrape_trendshows
    trendshow = self.new
    doc = Nokogiri::HTML(open("https://trakt.tv/shows/trending"))
    doc.search("div.titles h3").map do |element|
      trendshows = element.text
    end

    trendshows.each.with_index(1) do |trendshow, index|
      puts "#{index}. #{trendshow}"
    end
  end

  def self.scrape_anticipshows
    anticipshow = self.new
    doc = Nokogiri::HTML(open("https://trakt.tv/shows/anticipated"))
    doc.search("div.titles h3").map do |element|
      anticipshow = element.text
      anticipshows << anticipshow
    end

    anticipshows.each.with_index(1) do |anticipshow, index|
      puts "#{index}. #{anticipshow}"
    end
  end

  def self.selected_tshow_to_url(number)
    "https://trakt.tv/shows/#{trendshows[number.to_i-1].gsub(" ", "-")}"
  end

  def self.selected_ashow_to_url(number)
    "https://trakt.tv/shows/#{anticipshows[number.to_i-1].gsub(" ", "-")}"
  end
end
