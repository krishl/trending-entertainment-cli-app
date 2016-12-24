class TrendingEntertainmentCliApp::Shows
  attr_accessor :title, :year, :release_date, :url
  @@trendshows = []
  @@anticipshows = []

  def self.trendshows
    @@trendshows
  end

  def self.anticipshows
    @@anticipshows
  end

  def self.scrape_trendshows
    trendshow = self.new
    doc = Nokogiri::HTML(open("https://trakt.tv/shows/trending"))
    doc.search("div.titles h3").map do |element|
      trendshow = element.text
      trendshows << trendshow
    end

    trendshows.each.with_index(1) do |trendshow, index|
      puts "#{index}. #{trendshow}"
    end
  end

  def self.scrape_anticipshows
    anticipshow = self.new
    doc = Nokogiri::HTML(open("https://trakt.tv/shows/anticipated"))
    doc.search("div.titles h3").map do |element|
      anticipshows << anticipshow
    end
    
    anticipshows.each.with_index(1) do |anticipshow, index|
      puts "#{index}. #{anticipshow}"
    end
  end
end
