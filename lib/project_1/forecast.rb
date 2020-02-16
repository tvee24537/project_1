class Project1::Forecast
  attr_accessor :name, :temp, :condition
  
  def self.today
    # Scrape Accuweather.com for forecast inforamtion for current week.
    days = []

    days << self.scrape_cast

    days
  end

  def self.scrape_cast
    #scrap function to scrape from Accuweather
    doc = Nokogiri::HTML(open("https://f1.weather.gov/MapClick.php?lat=38.8988&lon=-77.0365#.XkmfdmhKiUl"))
    binding.pry
    
    day.name1 = doc.search("p")[8].text
    day.name2 = doc.search("p")[12].text
    day.name3 = doc.search("p")[16].text
    day.name4 = doc.search("p")[20].text
    day.name5 = doc.search("p")[24].text
    day.name6 = doc.search("p")[28].text
    day.name7 = doc.search("p")[32].text
    day.name8 = doc.search("p")[36].text
    day.name9 = doc.search("p")[40].text
    
    day.condition1 = doc.search("p")[10].text
    day.condition2 = doc.search("p")[14].text
    day.condition3 = doc.search("p")[18].text
    day.condition4 = doc.search("p")[22].text
    day.condition5 = doc.search("p")[26].text
    day.condition6 = doc.search("p")[30].text
    day.condition7 = doc.search("p")[34].text
    day.condition8 = doc.search("p")[38].text
    day.condition9 = doc.search("p")[42].text

    
    day.temp1 = doc.search("p")[11].text
    day.temp2 = doc.search("p")[15].text
    day.temp3 = doc.search("p")[19].text
    day.temp4 = doc.search("p")[23].text
    day.temp5 = doc.search("p")[27].text
    day.temp6 = doc.search("p")[31].text
    day.temp7 = doc.search("p")[35].text
    day.temp8 = doc.search("p")[39].text
    day.temp9 = doc.search("p")[43].text
    
    
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