class Scraper
  
  attr_accessor :name, :temp, :condition
  
  url = "https://f1.weather.gov/MapClick.php?lat=38.8988&lon=-77.0365#.XkmfdmhKiUl"
  
  def initialize(name, temp, condition)
    @name = name
    @temp = temp
    @condition = condition
    @@day << self
  end
    
  
  def self.scrape_cast1
    doc = Nokogiri::HTML(open(@@url))
    
    day = self.new
    day.name = doc.search("p")[8].text
    day.condition = doc.search("p")[10].text
    day.temp = doc.search("p")[11].text
    
    day
  end
  
  
  
  
  
end