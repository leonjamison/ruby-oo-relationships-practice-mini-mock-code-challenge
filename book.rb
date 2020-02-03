class Book
    @@all = []
    def initialize (author, title, word_count)
    @author = author 
    @title = title
    @word_count = word_count 
    @@all << self 
    end 
    def self.all
        @@all
    end 
    def author 
        @author
    end 
    def title 
        @title
    end 
    def word_count
        @word_count
    end 
