class Author 
    attr_reader :name
    @@all =[]
    def initialize(name)
        @name = name
        @@all << self 
    end 
    def self.all 
        @@all
    end 
    def books 
        Book.all.select {|book| book.author == self}
    end 
    def write_book (title, word_count)
        Book.new(self, title, word_count)
    end 
    def total_words
        total = 0
        books.each do |book| 
            total+=book.word_count
        end
        total
    end 
    def self.most_words
        artists_and_word_count = @@all.map{|artists| artists.total_words }
        most_words = artists_and_word_count.max
        @@all.select{|artists| artists.total_words == most_words}
    end 
end
