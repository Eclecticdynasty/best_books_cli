class BestBooks::Book

  attr_accessor :name, :author, :summary

  def self.today
    self.scrape_best_books

  end

  def self.scrape_best_books
    

  end



end
