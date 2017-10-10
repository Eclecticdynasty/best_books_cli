class BestBooks::Scraper
  def self.scrape_details

    doc = Nokogiri::HTML(open("http://www.powells.com/25-books-to-read-before-you-die"))

    doc.css('div.readbefore_box').each do |book_css|
      book = BestBooks::Book.new
      book.name = book_css.css('h3').text.strip
      book.author = book_css.css('.author').text.strip
      book.summary = book_css.css('p.blurb').text.strip
      book.save


    end

  end
end
