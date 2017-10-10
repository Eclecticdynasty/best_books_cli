require 'pry'
class BestBooks::Book

  attr_accessor :name, :author, :summary
  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
  end
end

#instance method
#
# def whatever
#
# end
#
# #class method
#
# def self.whatever
#
# end
#
# #instance variable
#
# @name
#
# #class variable
#
# @@names
