class BestBooks::CLI

  def call
    puts ""
    puts "Welcome ro the Best Books List. Welcome to the place to find the best books in every genre. Feel free to browse to find out more."
    puts ""
    book_list
  end

  def book_list
    puts "Here are the list of 25 books to read before you die."
    puts "They are not ranked in any particular order."
    puts ""
    puts_books
    puts ""
    puts "Enter 1-25 to learn more about each book."
    puts ""
    puts "Enter exit when you are finished browsing."

  end

  def puts_books
    current_books.each_with_index do |book, index|
      puts "#{index +1}. #{book}"

    end
  end

end
