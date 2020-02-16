class Project1::Forecast
  attr_accessor :name, :low, :high, :condition
  
  def self.today
    # Scrape Accuweather.com for forecast inforamtion for current week.
    days = []

    days << self.scrape_cast

    days
  end

  def self.scrape_cast
    #scrap function to scrape from Accuweather
    doc = Nokogiri::HTML(open("https://www.accuweather.com/"))
    binding.pry
    
    
#    day.name = doc.search("h2.main-title").text.strip
#    day.low = doc.search("#todays-deal span.price").text.strip
#    day.high = doc.search("a.wantone").first.attr("href").strip
#    day.condition = doc.search("a.wantone").first.attr("href").strip

#    day
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