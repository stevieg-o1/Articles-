require_relative '../config/environment'

# Create instances of authors
author1 = Author.new("Jack Daniels")
author2 = Author.new("Van Dame")

# Create instances of magazines
magazine1 = Magazine.new("Tech Weekly", "Technology")
magazine2 = Magazine.new("Cars Monthly", "Cars")

# Create a new instance of Article
article = Article.new(author1, magazine1, "Article Title")

# Access the attributes using the getter methods
puts article.author.name
puts article.magazine.name
puts article.title

# Add an article for an author
author1.add_article(magazine2, "New Article Title")

# Access the attributes and methods of an author
puts author1.name
puts author1.articles.inspect
puts author1.magazines.inspect
puts author1.topic_areas.inspect

# Access the attributes and methods of a magazine
magazine2.name = "New Magazine Name"
puts magazine2.name
puts magazine2.category
puts Magazine.all.inspect
puts magazine2.contributors.inspect
puts Magazine.find_by_name("Magazine Name")
puts magazine2.articles.inspect
puts magazine2.article_titles.inspect
puts magazine2.contributing_authors.inspect