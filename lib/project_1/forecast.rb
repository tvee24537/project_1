class Project1::Forecast
  attr_accessor :name, :temp, :condition
  
  def self.today
    # Scrape weather.gov for forecast inforamtion for current week.
    days = []

    days << self.scrape_cast

    days
  end

  def self.scrape_cast
    #scrap function to scrape from weather.gov
    doc = Nokogiri::HTML(open("https://f1.weather.gov/MapClick.php?lat=38.8988&lon=-77.0365#.XkmfdmhKiUl"))
    
    day = self.new
    
    day.name[1] = doc.search("p")[8].text
    day.name[2] = doc.search("p")[12].text
    day.name[3] = doc.search("p")[16].text
    day.name[4] = doc.search("p")[20].text
    day.name[5] = doc.search("p")[24].text
    day.name[6] = doc.search("p")[28].text
    day.name[7] = doc.search("p")[32].text
    day.name[8] = doc.search("p")[36].text
    day.name[9] = doc.search("p")[40].text
    
    day.condition[1] = doc.search("p")[10].text
    day.condition[2] = doc.search("p")[14].text
    day.condition[3] = doc.search("p")[18].text
    day.condition[4] = doc.search("p")[22].text
    day.condition[5] = doc.search("p")[26].text
    day.condition[6] = doc.search("p")[30].text
    day.condition[7] = doc.search("p")[34].text
    day.condition[8] = doc.search("p")[38].text
    day.condition[9] = doc.search("p")[42].text

    
    day.temp[1] = doc.search("p")[11].text
    day.temp[2] = doc.search("p")[15].text
    day.temp[3] = doc.search("p")[19].text
    day.temp[4] = doc.search("p")[23].text
    day.temp[5] = doc.search("p")[27].text
    day.temp[6] = doc.search("p")[31].text
    day.temp[7] = doc.search("p")[35].text
    day.temp[8] = doc.search("p")[39].text
    day.temp[9] = doc.search("p")[43].text
    
    
#    day.name = doc.search("h2.main-title").text.strip
#    day.temp = doc.search("a.wantone").first.attr("href").strip
#    day.condition = doc.search("a.wantone").first.attr("href").strip

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