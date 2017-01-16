class TrendingEntertainmentCliApp::IndexScraper
  attr_accessor :name, :year
  @@all = []

  def initialize(name = nil, year = nil)
    @name = name
    @year = year
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_clear
    @@all.clear
  end

  def self.scrape_index(url)
    puts = ""
    index = Nokogiri::HTML(open(url))
    index.css("div.titles h3").each do |element|
      individual = self.new
      individual.name = element.text.chomp.gsub(/\s\d\d\d\d$/, "")
      individual.year = element.text.chomp.gsub("#{individual.name} ", "").gsub("#{individual.name}", "")
    end
  end

  def self.scrape_url(path, number)
    index = Nokogiri::HTML(open(path))
    count = number.to_i - 1
    url = index.search("div.grid-item.col-sm-6 meta[itemprop='url']")[count]["content"]
    TrendingEntertainmentCliApp::DetailsScraper.scrape_details(url)
  end
end
