class Project1::CLI
  
  def forecast
    list_days
    menu
    goodbye
  end
  
  def list_days
    puts "This Week's Forecast:"
    @days = Project1::Forecast.today
    @days.each.with_index(1) do |day, i|
      puts "#{i}. #{day.name}"
    end
  end
  
  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the day you'd like more info on, type list to see the days again or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
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