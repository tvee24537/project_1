class Project1::Forecast
  #Starts with day name, temperature, and day condition
  attr_accessor :name, :temp, :condition
  
  @days = []
  
  #URL for forecast over area zip code 20500, White House, the middle of Washington D.C. 
  @@url = "https://f1.weather.gov/MapClick.php?lat=38.8988&lon=-77.0365#.XkmfdmhKiUl"
  
  def initialize(name, temp, condition)
    @name = name
    @temp = temp
    @condition = condition
    @days << self
  end
    
  def self.all  
    @@all
  end
  
  def self.today
    #store scraped information in the days array.
    days = []

    days << self.scrape_cast1
    days << self.scrape_cast2
    days << self.scrape_cast3
    days << self.scrape_cast4
    days << self.scrape_cast5
    days << self.scrape_cast6
    days << self.scrape_cast7
    days << self.scrape_cast8
    days << self.scrape_cast9

    days
  end
  
#scrape method to scrape from weather.gov 
  #using Nokogiri to turn the site into ruby objects and selecting the information that is needed.
  def self.scrape_cast1
    doc = Nokogiri::HTML(open(@@url))
    
    day = self.new
    day.name = doc.search("p")[8].text
    day.condition = doc.search("p")[10].text
    day.temp = doc.search("p")[11].text
    
    day
  end
  
  def self.scrape_cast2
    doc = Nokogiri::HTML(open(@@url))
    
    day = self.new
    day.name = doc.search("p")[12].text
    day.condition = doc.search("p")[14].text
    day.temp = doc.search("p")[15].text
    
    day
  end
  
  def self.scrape_cast3
    doc = Nokogiri::HTML(open(@@url))
    
    day = self.new
    day.name = doc.search("p")[16].text
    day.condition = doc.search("p")[18].text
    day.temp = doc.search("p")[19].text
    
    day
  end
  
  def self.scrape_cast4
    doc = Nokogiri::HTML(open(@@url))
    
    day = self.new
    day.name = doc.search("p")[20].text
    day.condition = doc.search("p")[22].text
    day.temp = doc.search("p")[23].text
    
    day
  end
  
  def self.scrape_cast5
    doc = Nokogiri::HTML(open(@@url))
    
    day = self.new
    day.name = doc.search("p")[24].text
    day.condition = doc.search("p")[26].text
    day.temp = doc.search("p")[27].text
    
    day
  end
  
  def self.scrape_cast6
    doc = Nokogiri::HTML(open(@@url))
    
    day = self.new
    day.name = doc.search("p")[28].text
    day.condition = doc.search("p")[30].text
    day.temp = doc.search("p")[31].text
    
    day
  end
  
  def self.scrape_cast7
    doc = Nokogiri::HTML(open(@@url))
    
    day = self.new
    day.name = doc.search("p")[32].text
    day.condition = doc.search("p")[34].text
    day.temp = doc.search("p")[35].text
    
    day
  end
    
  def self.scrape_cast8
    doc = Nokogiri::HTML(open(@@url))
    
    day = self.new
    day.name = doc.search("p")[36].text
    day.condition = doc.search("p")[38].text
    day.temp = doc.search("p")[39].text
    
    day
  end
  
  def self.scrape_cast9
    doc = Nokogiri::HTML(open(@@url))
    
    day = self.new
    day.name = doc.search("p")[40].text
    day.condition = doc.search("p")[42].text
    day.temp = doc.search("p")[43].text
    
    day
  end
end