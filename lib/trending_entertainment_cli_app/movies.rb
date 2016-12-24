class TrendingEntertainmentCliApp::Movies
  @@trendmovies = []
  @@anticipmovies = []

  def self.trendmovies
    @@trendmovies
  end

  def self.anticipmovies
    @@anticipmovies
  end

  def self.scrape_trendmovies
    trendmovie = self.new
    doc = Nokogiri::HTML(open("https://trakt.tv/movies/trending"))
    doc.search("div.titles h3").map do |element|
      trendmovie = element.text
      trendmovies << trendmovie
    end

    trendmovies.each.with_index(1) do |trendmovie, index|
      puts "#{index}. #{trendmovie}"
    end
  end

  def self.scrape_anticipmovies
    anticipmovie = self.new
    doc = Nokogiri::HTML(open("https://trakt.tv/movies/anticipated"))
    doc.search("div.titles h3").map do |element|
      anticipmovie = element.text
      anticipmovies << anticipmovie
    end

    anticipmovies.each.with_index(1) do |anticipmovie, index|
      puts "#{index}. #{anticipmovie}"
    end
  end

  def self.selected_tmovie_to_url(number)
    puts trendmovies[number.to_i-1]
  end

  def self.selected_amovie_to_url(number)
    puts anticipmovies[number.to_i-1]
  end
end
