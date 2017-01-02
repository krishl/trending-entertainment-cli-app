class TrendingEntertainmentCliApp::IndexScraper
  attr_accessor :name, :year, :url
  @@all = []

  def initialize(name = nil, year = nil, url = nil)
    @name = name
    @year = year
    @url = url
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
      individual.url = element.text.chomp.gsub(" ", "-").gsub("'", "-").gsub("--", "-")
    end
  end
end
