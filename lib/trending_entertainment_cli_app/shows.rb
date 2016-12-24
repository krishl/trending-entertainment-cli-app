class TrendingEntertainmentCliApp::Shows
  attr_accessor :title, :year, :rating, :release_date, :url
  @@trendshows = []
  @@anticipshows = []

  def initialize(title = nil, year = nil)
    @title = title
    @year = year
  end

  def self.trendshows
    @@trendshows
  end

  def self.anticipshows
    @@anticipshows
  end

  def self.scrape_trendshows
    doc = Nokogiri::HTML(open("https://trakt.tv/shows/trending"))

  end

  def self.trending_shows
    trendshows = ["one", "two"] #placeholder
    trendshows.each.with_index(1) do |trendshow, index|
      puts "#{index}. #{trendshow}"
    end
  end

  def self.anticipated_shows
    puts "anticipated shows" #placeholder
  end
end
