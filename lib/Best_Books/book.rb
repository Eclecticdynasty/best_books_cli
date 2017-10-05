require 'pry'
class BestBooks::Book

  attr_accessor :name, :author, :summary

  def self.scrape_details

    doc = Nokogiri::HTML(open("http://www.powells.com/25-books-to-read-before-you-die"))

    doc.css('div.readbefore_box').collect do |book_css|
      book = self.new
      book.name = book_css.css('h3').text.strip
      book.author = book_css.css('.author').text.strip
      book.summary = book_css.css('p.blurb').text.strip

      book

    end

  end

end
