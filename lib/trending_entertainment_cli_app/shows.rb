class TrendingEntertainmentCliApp::Shows
  attr_accessor :title, :year, :rating, :release_date, :url

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
