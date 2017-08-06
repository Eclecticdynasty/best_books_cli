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
    @books = BestBooks::Book.today
    @books.each_with_index do |book, index|
      puts "#{index +1}. #{book}"
    end
  end

  def menu
    while input != "exit"
      puts ""
      input = gets.strip.downcase
      puts ""

      if input.to_i > 0
        case input
        when "1"
          puts ""
          @book_details = BestBooks::Book.scrape_details(0)
          book_info
        when "2"
          puts ""
          @book_details = BestBooks::Book.scrape_details(1)
          book_info
        when "3"
          puts ""
          @book_details = BestBooks::Book.scrape_details(2)
          book_info
        when "4"
          puts ""
          @book_details = BestBooks::Book.scrape_details(3)
          book_info
        when "5"
          puts ""
          @book_details = BestBooks::Book.scrape_details(4)
          book_info
        when "6"
          puts ""
          @book_details = BestBooks::Book.scrape_details(5)
          book_info
        when "7"
          puts ""
          @book_details = BestBooks::Book.scrape_details(6)
          book_info
        when "8"
          puts ""
          @book_details = BestBooks::Book.scrape_details(7)
          book_info
        when "9"
          puts ""
          @book_details = BestBooks::Book.scrape_details(8)
          book_info
        when "10"
          puts ""
          @book_details = BestBooks::Book.scrape_details(9)
          book_info
        when "11"
          puts ""
          @book_details = BestBooks::Book.scrape_details(10)
          book_info
        when "12"
          puts ""
          @book_details = BestBooks::Book.scrape_details(11)
          book_info
        when "13"
          puts ""
          @book_details = BestBooks::Book.scrape_details(12)
          book_info
        when "14"
          puts ""
          @book_details = BestBooks::Book.scrape_details(13)
          book_info
        when "15"
          puts ""
          @book_details = BestBooks::Book.scrape_details(14)
          book_info
        when "16"
          puts ""
          @book_details = BestBooks::Book.scrape_details(15)
          book_info
        when "17"
          puts ""
          @book_details = BestBooks::Book.scrape_details(16)
          book_info
        when "18"
          puts ""
          @book_details = BestBooks::Book.scrape_details(17)
          book_info
        when "19"
          puts ""
          @book_details = BestBooks::Book.scrape_details(18)
          book_info
        when "20"
          puts ""
          @book_details = BestBooks::Book.scrape_details(19)
          book_info
        when "21"
          puts ""
          @book_details = BestBooks::Book.scrape_details(20)
          book_info
        when "22"
          puts ""
          @book_details = BestBooks::Book.scrape_details(21)
          book_info
        when "23"
          puts ""
          @book_details = BestBooks::Book.scrape_details(22)
          book_info
        when "24"
          puts ""
          @book_details = BestBooks::Book.scrape_details(23)
          book_info
        when "25"
          puts ""
          @book_details = BestBooks::Book.scrape_details(24)
          book_info
        end
      elsif input =="exit"
        goodbye
      end


    end
  end

  def book_info
    puts "Title: #{@book_details.name}"
    puts ""
    puts "#{@book_details.author}"
    puts ""
    puts "#{@book_details.summary}"
    puts ""

  end

def goodbye
  puts ""
  puts "See you soon for the next list!"
  puts ""


end


end
