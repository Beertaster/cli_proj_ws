class News_scraper::Scp_Scraper
  
  def self.scrape 
    doc = Nokogiri::HTML(open("https://www.scp-wiki.net/top-rated-pages-this-month"))
  
    doc.css("article.CardWrapper__root--f13IZ").each do |news|
      name = news.css("h3").text
      body = news.cc("StoryBody__root--2VihO").text
      hidden = news.cc("StoryBody__paragraph--2-Doz").text
      News_Scraper.new(name, body, hidden)
    end
  end
end