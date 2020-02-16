class Project1::CLI
  
  #Guider method, gem will run in 3 parts mentioned under the forecast method.
  def forecast
    list_days
    menu
    goodbye
  end
  
  #This method will list out the days currently displayed on weather.gov with numbers in front.
  def list_days
    puts "This Week's Forecast:"
    @days = Project1::Forecast.today
    @days.each.with_index(1) do |day, i|
      puts "#{i}. #{day.name}"
    end
  end
  
  #This method lets the user input numbers, list, and exit to interact with the gem to display more detail about the day, and deal with user error as well. 
  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the day you'd like more info on, type list to see the days again or type exit:"
      input = gets.strip.downcase
      #input can only be from 1-9 because there's only 9 scraper methods currently.
      if input.to_i > 0 && input.to_i <= 9   
        the_days = @days[input.to_i-1]
        puts "#{the_days.name} - #{the_days.temp} - #{the_days.condition}"
      elsif input == "list"
        list_days
      else
        puts "Not sure what you want, type list or exit."
      end
    end
  end

  def goodbye
    puts "See you later for the next forecast!"
  end  
end