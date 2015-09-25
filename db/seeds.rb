# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

russ_olsen = Author.find_or_create_by first_name: "Russ", last_name: "Olsen" do |author|
  author.biography = %Q(Russ likes to think that the technology is there to solve problems for people, not the other way around. Russ started his career doing that other kind of engineering, the sort that involves electricity, gears and getting dirty. Pretty rapidly the wonder of computer programming lured Russ away, which probably explains why most of his fingers are still intact today.

  Since turning to coding, Russ has worked on everything from 3D design and image processing software to database query engines and workflow systems. Russ first discovered Ruby back in 2000 when he went looking for a simple programming language to teach to his son. The seven year old lost interest, but Russ never did and he has been building increasingly sophisticated systems in Ruby ever since.

  Russ also spends a fair bit of time promoting Ruby via public speaking and he helped found RubyNation, a regional Ruby conference held each Spring in Northern Virginia. Russ has also written extensively about Ruby in the form of two highly regarded books: The first, Design Patterns in Ruby was published in 2008 and is a complete reworking of the classic Gang of Four patterns for a modern dynamic programming language. Russ’s second book Eloquent Ruby is a guide to writing idiomatic Ruby. Eloquent Ruby was an instant hit in the Ruby and Rails community when it was published earlier this year. Russ also has been secretly enamored with parentheses since a very early age and lately has been dabbling in Clojure.

  Russ is also a Vice President of Consulting Services at Cognitect.)
end

dhh = Author.find_or_create_by first_name: "David", last_name: "Heinemeier Hansson" do |author|
  author.biography = %Q(David Heinemeier Hansson (born 15 October 1979; known to the Ruby and car racing communities as DHH) is a Danish programmer and the creator of the popular Ruby on Rails web development framework and the Instiki wiki. He is also a partner at the web-based software development firm Basecamp (formerly 37signals).

  Hansson co-wrote Agile Web Development with Rails with Dave Thomas in 2005 as part of The Facets of Ruby Series. He also co-wrote Getting Real, Rework, and Remote with Jason Fried.)
end

dave_thomas = Author.find_or_create_by first_name: "Dave", last_name: "Thomas" do |author|
  author.biography = %Q(Dave Thomas is a computer programmer, author and editor. He has written about Ruby and together with Andy Hunt, he co-authored The Pragmatic Programmer and runs The Pragmatic Bookshelf publishing company. Thomas moved to the United States from England in 1994 and lives north of Dallas, Texas.

  Thomas coined the phrases 'Code Kata' and 'DRY' (Don't Repeat Yourself), and was an original signatory and author of the Agile Manifesto. He studied computer science at Imperial College London.)
end

sam_ruby = Author.find_or_create_by first_name: "Sam", last_name: "Ruby" do |author|
  author.biography = %Q(Sam Ruby is a prominent software developer, W3C working group co-chair and Apache Software Foundation director who has made significant contributions to web standards and open source software projects. In particular he has contributed to the standardization of syndicated web feeds via his involvement with the Atom standard and the Feed Validator web service.

  He currently holds a Senior Technical Staff Member position in the Emerging Technologies Group of IBM. He resides in Raleigh, North Carolina.[1]

  He is a co-chair of the W3C's HTML Working Group.)
end

sandi_metz = Author.find_or_create_by first_name: "Sandi", last_name: "Metz" do |author|
  author.biography = %Q(Sandi Metz has thirty years of experience working on projects that survived to grow and change. She now writes code every day as a software architect at Duke University, where her team solves real problems for customers who have large object-oriented applications that have been evolving for more than fifteen years. She has spoken at Ruby Nation and speaks regularly at the Gotham Ruby Users Conference.)
end

paolo_perrotta = Author.find_or_create_by first_name: "Paolo", last_name: "Perrotta" do |author|
  author.biography = %Q(Paolo Perrotta has fifteen years of experience as a developer, ranging from embedded to enterprise software, computer games, and web applications. Paolo lives a nomadic life, mentoring agile teams throughout Europe. He has a base camp in Bologna, Italy. He loves Ruby.)
end

andy_hunt = Author.find_or_create_by first_name: "Andrew", last_name: "Hunt" do |author|
  author.biography = %Q(Andy Hunt (sometimes credited as Andrew Hunt) is a writer of books on software development. Hunt co-authored The Pragmatic Programmer, six other books and many articles, and was one of the 17 original authors of the Agile Manifesto and founders of the Agile Alliance. He and partner Dave Thomas founded the Pragmatic Bookshelf series of books for software developers.)
end

Book.find_or_create_by title: "Eloquent Ruby" do |book|
  book.description = %Q(
It’s easy to write correct Ruby code, but to gain the fluency needed to
write great Ruby code, you must go beyond syntax and absorb the “Ruby way”
of thinking and problem solving. In Eloquent Ruby, Russ Olsen helps you
write Ruby like true Rubyists do–so you can leverage its immense, surprising
power.)
  book.isbn = "978-0321584106"
  book.publisher = "Addison-Wesley"
  book.published_on = "2011-02-21"
  book.image = "http://ecx.images-amazon.com/images/I/41IDuwJXFCL._SX258_BO1,204,203,200_.jpg"
  book.authors << russ_olsen
end

Book.find_or_create_by title: "Agile Web Development with Rails 4" do |book|
  book.description = %Q(Rails just keeps on changing. Both Rails 3 and 4, as well as Ruby 1.9 and 2.0, bring hundreds of improvements, including new APIs and substantial performance enhancements. The fourth edition of this award-winning classic has been reorganized and refocused so it's more useful than ever before for developers new to Ruby and Rails.)
  book.isbn = "978-1937785567"
  book.publisher = "Pragmatic Bookshelf"
  book.published_on = "2013-10-11"
  book.image = "https://imagery.pragprog.com/products/196/rails4_xlargecover.jpg"
  book.authors << [sam_ruby, dave_thomas, dhh]
end

Book.find_or_create_by title: "Practical Object-Oriented Design in Ruby" do |book|
  book.description = %Q(Ruby’s widely admired ease of use has a downside: Too many Ruby and Rails applications have been created without concern for their long-term maintenance or evolution. The Web is awash in Ruby code that is now virtually impossible to change or extend. This text helps you solve that problem by using powerful real-world object-oriented design techniques, which it thoroughly explains using simple and practical Ruby examples.)
  book.isbn = "078-5342721331"
  book.publisher = "Addison-Wesley"
  book.published_on = "2012-09-15"
  book.image = "http://ecx.images-amazon.com/images/I/51U-Wi%2BkYvL._SY344_BO1,204,203,200_.jpg"
  book.authors << sandi_metz
end

Book.find_or_create_by title: "Metaprogramming Ruby 2" do |book|
  book.description = %Q(Write powerful Ruby code that is easy to maintain and change. With metaprogramming, you can produce elegant, clean, and beautiful programs. Once the domain of expert Rubyists, metaprogramming is now accessible to programmers of all levels. This thoroughly revised and updated second edition of the bestselling Metaprogramming Ruby explains metaprogramming in a down-to-earth style and arms you with a practical toolbox that will help you write your best Ruby code ever.)
  book.isbn = "978-1941222126"
  book.publisher = "Pragmatic Bookshelf"
  book.published_on = "2014-08-18"
  book.image = "https://imagery.pragprog.com/products/337/ppmetr2_xlargecover.jpg"
  book.authors << paolo_perrotta
end

Book.find_or_create_by title: "The Pragmatic Programmer: From Journeyman to Master" do |book|
  book.description = %Q(You’re a Pragmatic Programmer. You aren’t wedded to any particular technology, but you have a broad enough background in the science, and your experience with practical projects allows you to choose good solutions in particular situations. Theory and practice combine to make you strong. You adjust your approach to suit the current circumstances and environment. And you do this continuously as the work progresses. Pragmatic Programmers get the job done, and do it well.)
  book.isbn = "078-5342616224"
  book.publisher = "Addison-Wesley"
  book.published_on = "1999-10-30"
  book.image = "https://imagery.pragprog.com/products/59/tpp_xlargecover.jpg"
  book.authors << [dave_thomas, andy_hunt]
end

