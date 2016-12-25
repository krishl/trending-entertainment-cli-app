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
    index = Nokogiri::HTML(open(url))
    index.css("div.titles h3").each do |element|
      individual = self.new
      individual.name = element.text.chomp.gsub(/\d\d\d\d$/, "")
      individual.year = element.text.chomp.split(" ")[-1]
    end

    all.each.with_index(1) do |element, index|
      puts "#{index}. #{element.name}(#{element.year})"
    end
  end

end
