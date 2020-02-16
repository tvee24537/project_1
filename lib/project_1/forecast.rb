class Project1::Forecast
  attr_accessor :name, :temp, :condition
  
  @@url = "https://f1.weather.gov/MapClick.php?lat=38.8988&lon=-77.0365#.XkmfdmhKiUl"
  
  def self.today
    # Scrape weather.gov for forecast inforamtion for current week and storing it in the days array.
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

  def self.scrape_cast1
    #scrap function to scrape from weather.gov
    doc = Nokogiri::HTML(open(@@url))
    
    day = self.new
    
    day.name = doc.search("p")[8].text
    day.condition = doc.search("p")[10].text
    day.temp = doc.search("p")[11].text

#    day.name = doc.search("h2.main-title").text.strip
#    day.temp = doc.search("a.wantone").first.attr("href").strip
#    day.condition = doc.search("a.wantone").first.attr("href").strip

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


#example code for ref.
#class DailyDeal::Deal
#  attr_accessor :name, :price, :availability, :url

#  def self.today
    # Scrape woot and meh and then return deals based on that data
#    self.scrape_deals
#  end

#  def self.scrape_deals
#    deals = []

#    deals << self.scrape_woot
#    deals << self.scrape_meh

#    deals
#  end

#  def self.scrape_woot
#    doc = Nokogiri::HTML(open("https://woot.com"))

#    deal = self.new
#    deal.name = doc.search("h2.main-title").text.strip
#    deal.price = doc.search("#todays-deal span.price").text.strip
#    deal.url = doc.search("a.wantone").first.attr("href").strip
#    deal.availability = true

#    deal
#  end

#  def self.scrape_meh
#    doc = Nokogiri::HTML(open("https://meh.com"))

#    deal = self.new
#    deal.name = doc.search("section.features h2").text.strip
#    deal.price = doc.search("button.buy-button").text.gsub("Buy it.", "").strip
#    deal.url = "https://meh.com"
#    deal.availability = true

#    deal
#  end
#end