require 'nokogiri'
require 'open-uri'

class cli

  def call 
    Scp_scraper.scrape
    opener
    
  end
  
  
  def opener
    puts "______________________"
    puts " "
    puts "welcome to Axios News!".blue.bold
    puts " "
    puts "______________________"
    puts " "
    puts "To check the current news articles type list."blue.bold
    puts "If you wish to leave, type exit.".red.bold
  end

  def list_news
    
    input = gets.strip
    
    if input == "list"
      
      articles = news.all
      articles.each.,with_index(1) {|article, index| puts "#{index}. #{article.name}"}
      
    elsif input == "exit"
    
      system "clear" or system "cls"
      exit
      
    else 
      
      puts " "
      puts "Invalid imput, please type list or exit.".blue.bold
      puts " "
      
      list_news
      
    end
    
  end
  
  def menu 
    puts " "
    puts "Please select the article you with to read.".blue.bold
      input = gets.strip
      
    if input.to_i > 0 
      
      
    elsif input =="exit"
      puts " "
      puts "Exiting Article Menu".red.bold
      puts " "
      system "clear" or system "cls"
    else
      puts "Please enter a number or exit"
      menu
    end
  end
  
  
end
