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

    doc = Nokogiri::HTML(open(http://www.powells.com/book/2666-9780312429218))

    binding.pry

    

  end



end
