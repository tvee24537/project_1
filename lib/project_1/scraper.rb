class Scraper
    
  def self.scrape_cast
    
    doc = Nokogiri::HTML(open("https://f1.weather.gov/MapClick.php?lat=38.8988&lon=-77.0365#.XkmfdmhKiUl"))
    stones = doc.css(".tombstone-container")
    stones.each do |stone|
      period = stone.css(".period-name").text
      desc = stone.css(".short-desc").text
      temp = stone.css(".temp").text
      #binding.pry
      Project1::Forecast.new(period, temp, desc)
    end
  end

end
