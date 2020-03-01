class Scraper
    
  #def self.scrape_cast
    #url = Nokogiri::HTML(open("https://f1.weather.gov/MapClick.php?lat=38.8988&lon=-77.0365#.XkmfdmhKiUl"))
    #url.css("li.forecast-tombstone").collect do |scrape|
    #binding.pry
    
    #day = self.new
    #day.name = doc.search("p")[8].text
    #day.condition = doc.search("p")[10].text
    #day.temp = doc.search("p")[11].text
    
    #day
    
    #end
  #end
  
  def self.scrape_cast
    doc = Nokogiri::HTML(open("https://f1.weather.gov/MapClick.php?lat=38.8988&lon=-77.0365#.XkmfdmhKiUl"))
   
    day = self.new
    day.name = doc.search("p")[8].text
    day.condition = doc.search("p")[10].text
    day.temp = doc.search("p")[11].text
    
    day
  end

end
