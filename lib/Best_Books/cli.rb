class BestBooks::CLI
  def call
    puts ""
    puts "Welcome to the Best Books list. Welcome to the place to find the best books in every genre. Feel free to browse to find out more."
    puts ""
    book_list
    menu
    goodbye

  end
  def book_list
    puts "Here are the list of 25 books to read before you die."
    puts "They are not ranked in any particular order."
    @books = BestBooks::Book.today
    @books.each.with_index(1) do |book, i|
      puts "#{i}. #{book.name} - #{book.author} - #{book.summary}"

    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter 1-25 to learn more about each book or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        the_list = @books[input.to_i-1]
        puts "#{the_list.name} - #{the_list.author} - #{the_list.summary}"
      elsif input == "list"
        book_list



      end

    end

  end
  def goodbye
    puts ""
    puts "See you soon for the next list!"

  end
end
