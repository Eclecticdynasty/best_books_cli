class BestBooks::CLI
  def call
    puts ""
    puts "Welcome to the Best Books list. "
    puts "Welcome to the place to find the best books in every genre. Feel free to browse to find out more."
    puts "Here are the list of 25 books to read before you die."
    puts ""
    puts "They are not ranked in any particular order."
    puts ""
    BestBooks::Scraper.scrape_details
    book_list
    menu
    goodbye
  end

  def book_list
    #@books is an array
    @books = BestBooks::Book.all
    @books.each.with_index(1) do |book, i|
      puts "#{i}. #{book.name}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts ""
      puts "Enter 1-25 to learn more about each book or list to see the list of books again or type exit:"
      input = gets.strip.downcase

      # if the input is greater than 0 and less than or equal to 25
      if input.to_i > 0 && input.to_i <= @books.count
      the_list = @books[input.to_i-1]
        puts ""
        puts "#{the_list.name} #{the_list.author}"
        puts ""
        puts " Summary: "
        puts "  #{the_list.summary}  "
      elsif input == "list"
        book_list
      else
        puts "Invalid choice"
      end
    end
  end

  def goodbye
    puts ""
    puts "See you soon for the next list!"
    puts ""
  end
end
