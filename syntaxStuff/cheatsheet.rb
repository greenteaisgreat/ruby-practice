# #LOGGING
# puts 'Hello'
# print "World"
# puts '!'

# ruby uses snake_casing_for_its_files_and_variables

# #VARIABLES

# name = 'Nathan'
# age = 30

# =begin

#     This is how to leave multiline comments. Convention
#     for naming variables is lowercase for the first letter
#     and additional words separated_like_this

# =end

# # to assign constants, use uppercase
# MY_CONSTANT = 'hi'
# YAY = 'yo'

# #template literals can be done like this; can't use ``
# puts "My name is #{name}"


# #  MATH
# #converts floating point to integer
# puts 3.99.to_i

# #converts integer to floating point
# puts 3.to_f

# #converts number to string
# puts 3.8.to_s
# puts "50".to_i + 100

# #you can use .even and .odd after a number to check its parity
# puts 7.even?  #false
# puts 6.odd?  #false
# puts 8.even?  #true

# # STRINGS
# #strings have 0-based indexing
# greeting = "Howdy" 

# #convert objects/prims to a string
# puts 5.to_s  #=> '5'
# puts nil.to_s  #=> ''
# puts :symbol.to_s  #=> 'symbol' 

# puts greeting.length #5
# puts greeting[1] #o
# puts greeting.include? 'ow' #true
# puts greeting.include? 'oy' #false

# #starting index, how many characters to include
# puts greeting[2, 3] #wdy
# #starting index, up-to but not including index
# puts greeting[0..2] #Ho

# #the shovel operator (<<) can also be used to concatenate strings
# puts "hello " << "dawg"

# #or the actual .concat() method
# puts "hello ".concat("dawg")


# # STRING METHODS
# str = 'hello'

# #capitalize the first letter
# puts str = str.capitalize()

# #all uppercase
# puts str = str.upcase()

# #all lowercase
# puts str = str.downcase()

# #check if the str is empty
# puts str.empty? 
# puts ''.empty?

# #reverse a string
# puts str.reverse()


# #split
# puts str.split()
# puts str.split('')

# #trim whitespace
# puts '   hello   '.strip()

# #substitute a certain character
# puts 'he77o'.sub('7', 'l')  #the first occurring char
# puts 'he77o'.gsub('7', 'l')  #all occurring chars

# #insert string at a certain index
# puts 'hello'.insert(-1, ' dude')

# #delete all ocurring chars
# puts str.delete('l')

# #prepend a character
# puts '!'.prepend('hello ', 'world')



# #NUMBERS
# #basic arithmetic, just like in js
# 2 * 3
# 2 ** 3  #exponent
# 16 ** 0.5  #square root

# #if dividing by int & float, it'll return a float
# puts 10 / 3  #3
# puts 10 / 3.0  #3.33333

# num = -410.67
# puts num.abs() #410.67
# puts num.round() # -411

# puts Math.sqrt(16).to_i; #4
# puts Math.log(0) #-Infinity

#  SYMBOLS
=begin
    symbols are very similar to strings, except they differ
    in their uniqueness. ruby has to save in memory every string
    regardless of if they're the same or not. symbols allow you
    to create strings that are unique and can't be duplicated.
    symbols are used often in hashes (objects) in ruby
=end

#to illustrate this concept, we'll look at the identifiers
#of some strings vs symbols:
puts "string".object_id  #60
puts "string".object_id  #80
puts :string.object_id  #305308

puts "string".object_id === "string".object_id  #false
puts :string.object_id === :string.object_id  #true

# #  USER INPUT
# retrieves information from the console
# puts 'Enter your name: '
# name = gets            
# puts "Welcome, #{name}"

# # .chomp removes the new line that normally occurs after 'gets' output
# puts 'Enter first num: '
# num1 = gets.chomp
# puts 'Enter second num: '
# num2 = gets.chomp
# puts num1.to_f + num2.to_f   #you have to convert user input to numbers, if numeric!



# #  ARRAYS
# lucky_numbers = [1, 45, '56', 'howdy']

# puts lucky_numbers[0, 2]  #starting at 0, it retrieves 2 numbers
# puts lucky_numbers[0..2]  #retrieves el's from 0 i to 2 i
# puts lucky_numbers[-1]  #gets the last el
# puts lucky_numbers.length

# #2D ARRAYS
# unlucky_numbers = [42, [67, 66], 44]

# puts unlucky_numbers[1][0]


# #  ARRAY METHODS
# friends = []
# friends.push('grisby')
# friends.push('lionel')
# friends.push('snufkin')

# puts friends
# friends.pop
# puts friends

# puts friends.reverse  #creates a new, reversed array
# puts friends

# friends.reverse!  #reverses in place
# puts friends

# puts friends.sort  # sort! sorts in place

# puts friends.include? 'grisby'  #true
# puts friends.include? 'oscar'  #false


# #  METHODS/FUNCTIONS

# #can use default parameters
# def sum(a, b = 1)
#     return a + b
# end

# puts sum(1, 2)  #3



# #  CONDITIONALS
# is_student = false
# is_smart = true

# if is_student and is_smart
#     puts 'ayyyyy'

# elsif is_student and !is_smart
#     puts 'booooo'

# else
#     puts 'get outta here, punk!'

# end


# if 1 < 3
#     puts "that is correct, #{is_smart}"
# end



# #  SWITCH STATEMENTS
# my_grade = 'C'

# case my_grade
#     when 'A'
#         puts 'Good job' 
#     when 'B'
#         puts 'Not too shabby'
#     when 'C'
#         puts 'Oof'
#     else
#         puts 'Invalid grade'
# end



# #  DICTIONARIES / HASHES
# test_grades = {
#     andy: "B+",
#     stanley: "C",
#     ryan: "A",
#     3 => 95.2
# }

# test_grades[:andy] = 'A'
# puts test_grades


# some_obj = Object.new
# {some_obj => 123}
# puts some_obj



# def some_method(name:, age:) = "#{name} is #{age} years old"
# args = { name: "Joe", age: 50 }
# puts some_method(**args)



# #  WHILE LOOPS
# index = 1

# while index <= 5
#     puts index
#     index += 1
# end



# #  FOR LOOPS

# #prints 0 to 10
# for i in 0..10
#     puts i
# end

# #prints i up to, but not including 5
# 5.times do |i|
#     puts i
# end

# nums = [42, 67, 66]
# for num in nums
#     puts num
# end

# nums.each do |num| 
#     puts num
# end

# # if the do/end block can be contained on a single-line, do this
# my_nums = [1, 2, 3]

# my_nums.each { |num| puts num }



# #  EXCEPTION HANDLING
# begin
#     puts bad_variable
#     num = 10/0
# rescue ZeroDivisionError
#     puts 'Catches a specific error'
# rescue
#     puts 'All other errors caught here'
# end

# #you can make your own exceptions by calling the raise keyword
# raise "Make your own exception"



# #  CLASSES

# =begin
#   ruby comes built-in with certain classes, such as the String
#   class or the Number class. Each of those classes contains either
#   an instance method or a class method:

#   String.new() is a class method

#   str = 'my string'
#   str.split() is an instance method
# =end


# class Book
#     #this combines the attr_reader & attr_writer methods
#     attr_accessor :title, :author

#     def readBook()
#         # can also use #{self.title} and #{self.author}
#         puts "Reading #{@title} by #{@author}"
#     end
# end

# my_book = Book.new
# my_book.title = 'tim'
# my_book.author = 'timington'
# my_book.readBook()
# my_book.title = 'grisby'
# puts my_book.title

# book1 = Book.new
# book1.title = 'frankie'
# book1.author = 'frankington'
# book1.readBook()



# #  CONSTRUCTORS
# class Book
#     attr_accessor(:title, :author)

#     #can use either @ or self. to initialize properties
#     #can also use more than one constructor (initialize) method
#     def initialize(title, author)
#         @title = title
#         self.author = author
#     end

#     def readBook()
#         puts "Currently reading #{self.title} by #{@author}"
#     end
# end

# book = Book.new('nate', 'natington');

# book.readBook()



#  GETTERS AND SETTERS (or READERS & WRITERS)
# it seems like there's not much point to using these,
# as attr_accessor p much handles it well
# class Book

#     #THE SETTER MUST NOT HAVE SPACES BETWEEN title=(title) !!!
#     def title=(title) #setter/writer
#         puts "Set"
#         @title = title
#     end

#     #each property needs its own get/set method; two for 'title'
#     def title #getter/reader
#         puts 'Get'
#         return @title
#     end

#     def readBook()
#         puts "Reading #{@title}"
#     end
# end

# book1 = Book.new()
# book1.title = 'nate'
# puts book1.title
# book1.readBook()



# #  INHERITANCE
# class Chef 
#     attr_accessor(:name, :age)
#     def initialize(name, age)
#         @name = name
#         @age = age
#     end

#     def make_chicken()
#         puts 'The chef makes chicken'
#     end

#     def make_soup()
#         puts 'The chef makes soup'
#     end

#     def say_hi()
#         puts "Hi, I'm #{name} and I'm #{age} years old"
#     end
# end

# #classes and modules in ruby are PascalCase
# class ItalianChef < Chef
#     attr_accessor(:location)
#     def initialize(name, age, location)
#         super(name, age)
#         @location = location
#     end

#     def make_pasta()
#         puts 'The chef makes pasta'
#     end

#     def make_soup()
#         puts 'The chef makes even better soup'
#     end

#     def say_hi()
#         puts "Hi, I'm #{name}, I'm #{age} years old and I'm from #{location}"
#     end

# end

# my_chef = Chef.new('Nate', 35)
# my_chef.make_chicken()
# my_chef.make_soup()
# my_chef.say_hi()

# #your_chef has access to all methods from Chef and overrides make_soup()
# your_chef = ItalianChef.new('Gordon', 57, 'Italy')
# your_chef.make_chicken()
# your_chef.make_soup()
# your_chef.say_hi()



# #  COMPARISON 
=begin 
    ruby has a 'combined comparison operator', or otherwise
    known as a spacechip operator that looks like this:

    <=>

    It is used to compare two objects and returns -1, 0, or 1 
    depending on whether the first object is less than, equal to, 
    or greater than the second object, respectively.

    Here's how it works:

    If the first object is less than the second object, it returns -1.
    If the first object is equal to the second object, it returns 0.
    If the first object is greater than the second object, it returns 1.
=end


# # IRB
=begin
    irb is ruby's command line. to access it, simply type 'irb'
    in the command line to launch it. to launch irb with a file,
    type in: 
    
    irb -r ./<path-to-some-file>

    to see the raw data of a file, type in:

    irb ./<path-to-some-file>
    
=end