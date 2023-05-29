class Magazine
    attr_accessor :name, :category
    @@all = []
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def contributors
      Article.all.select { |article| article.magazine == self }.map(&:author).uniq
    end
  
    def self.find_by_name(name)
      @@all.find { |magazine| magazine.name == name }
    end
  
    def articles
      Article.all.select { |article| article.magazine == self }
    end
  
    def article_titles
      articles.map(&:title)
    end
  
    def contributing_authors
      author_counts = Hash.new(0)
      articles.each { |article| author_counts[article.author] += 1 }
      author_counts.select { |_author, count| count > 2 }.keys
    end
  end
  