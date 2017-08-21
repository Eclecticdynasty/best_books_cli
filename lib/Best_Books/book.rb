class BestBooks::Book

  attr_accessor :name, :author, :summary

  def self.today
    self.scrape_best_books

  end

  def self.scrape_best_books
    books = []

    books << self.scrape_details

    books
  end

  def self.scrape_details

    doc = Nokogiri::HTML(open("http://www.powells.com/book/2666-9780312429218"))

    book= self.new

    book.name = doc.search("h1.book-title").text
    book.author = doc.search("#ProductDetail > div:nth-child(1) > span > a").text
    book.summary = doc.search("#DisplayContent_2 > div:nth-child(23)").text

    book




  end



end
