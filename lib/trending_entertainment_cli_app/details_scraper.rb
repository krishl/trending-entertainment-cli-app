class TrendingEntertainmentCliApp::DetailsScraper
  attr_accessor :title, :year, :rating, :description, :category, :info

  def self.scrape_details(url)
    specific = self.new
    details = Nokogiri::HTML(open(url))
    specific.title = details.css("div.col-md-10.col-md-offset-2.col-sm-9.col-sm-offset-3.mobile-title h1").text.chomp.gsub(/(\d\d\d\d)/, "")
    specific.year = details.css("div.col-md-10.col-md-offset-2.col-sm-9.col-sm-offset-3.mobile-title h1 span.year").text
    specific.rating = details.css("div.col-md-10.col-md-offset-2.col-sm-9.col-sm-offset-3.mobile-title h1 div.certification").text
    specific.description = details.css("div.col-lg-8.col-md-7 div#overview").text
    specific.category = details.search("div.col-lg-8.col-md-7 li label").map{ |li| li.text}
    details.search("label").remove
    specific.info = details.css("div.col-lg-8.col-md-7 li").map{ |info| info.text}#.map{ |li| li.text}

    puts ""
    puts "--- TITLE ---"
    puts "#{specific.title.gsub("#{specific.rating}", "")}"
    puts ""
    puts "--- YEAR ---"
    puts "#{specific.year}"
    puts ""
    puts "--- CONTENT RATING ---"
    puts "#{specific.rating}"
    puts ""
    puts "--- DESCRIPTION ---"
    puts "#{specific.description}"
    puts ""
    puts "--- ADDITIONAL INFO ---"
    new = specific.category.zip(specific.info).flatten.compact
    puts new
    puts ""
  end
end
