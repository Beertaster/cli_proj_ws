class News_scrape::news_scraper
  
  def self.scrape 
    doc = Nokogiri::HTML(open("htpps://Axios.com"))
  
    doc.css("article.CardWrapper__root--f13IZ").each do |news|
      name = news.css("h3").text
      body = news.cc("StoryBody__root--2VihO").text
      hidden = news.cc("StoryBody__paragraph--2-Doz").text
	  date = news.css("PubDate__root--Zeoon").text
      News_srape::news.new(name, body, hidden)
    end
  end
end