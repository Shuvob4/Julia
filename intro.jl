#use println("hello") for printing in julia
println("Hello World !")

# Assigning Variables are like python
var_int = 64
println(var_int)
println(typeof(var_int))

var_float = 3.1416
println(var_float)
println(typeof(var_float))

var_string = "Julia"
println(var_string)
println(typeof(var_string))

# Converting one type of variable to another
var_int = var_string
println(var_int)
println(typeof(var_int))

#=
for multiple line comment
=#

# Basic Math Operation
sum = 3 + 4
println("Sum of two integers : ", sum)

difference = 6 - 2
println("Difference of two integers : ", difference)

product = 7 * 2
println("Product of two integers : ", product)

quotient = 9 / 3
println("Quotient of two integers : ", quotient)

power = 2 ^ 3 # in python we use **
println("2 to the power 3 is equal to : ", power)

modulus = 11 % 2
println("Modulus of 11 by 2 is : ", modulus)

# Strings
# We can create string by Enclosing the characters in either " " or """ """
string1 = "Hello World !"
string2 = """Hello World !!""" 

println(string1)
println(string2)

#=
Differences between enclosing them in " " and """ """

" " - we cannot use another quation inside this
""" """ - we can use another quation inside this
=#

#string_error = "Look, no "errors" !!!"
string_without_error = """ Look, no "error" !!!"""
println(string_without_error)

# single quation mark ' ' used to define a character not string
character_ = 'A' # if we put a multiple characters inside a single quation mark, it will give error
println(typeof(character_))

# String Interpolation
# use $ sign to insert variable inside string
name = "Julia"
println("I am learning a programming language named, $name")

int_a = 4
int_b = 2
product_ab = int_a * int_b
println("Procuct of $int_a and $int_b is equal to: $product_ab")

# we can also do arethmetic operation in println function
println("Procuct of $int_a and $int_b is equal to: $(int_a * int_b)")

# String Concatenation
# 3 ways
# 1. string() method, which converts non-string inputs to string
sc_one = string("Q: How many days you need a new habit ?", " A: In 21 days we can build a new habit")
println(sc_one)
sc_one_one = string("Q: How many days you need a new habit ?", " A: In 21 days we can build a new habit but it takes ", 90, 
                    " Days to turn that habit into lifestyle !!")
println(sc_one_one)

# 2. Using  *
s1 = "Q: How many days you need a new habit ?"
s2 = " A: In 21 days we can build a new habit"
sc_two = s1 * s2 # we cannot use this operation inside println method via using $() syntax
println(sc_two)

# 3. Using string interpolation
sc_three = "$s1$s2"
println(sc_three)

# Data Structure
#=
1. Dictionaries
2. Tuples
3. Array

Array & tuples both contains ordered sequence elements, whereas dictionaries are not ordered
Dictionary and array are mutable, we can change them
Tuples are immutable, we cannot change their contents after declaration
=#

# Dictionary
# Unorderd, cannot index into them, using typical indexing syntax will give error
# Mutable, can change content after initializing
# sets of data related to one another. e.g. contact list
# we can isert element in the dictionary when we initialize it
# Syntax: Dict("Key" => "Value")
phonebook = Dict("Contact_A" => "343-5581",
                "Contact_B" => "409-6301")
# we can also add eleemnt in dictionary like below
# Syntax:  name_of_dictonary["Key"] = "Value"
phonebook["Contact_C"] = "313-5583"

# we can see the contents of the dictionary lije this
phonebook

# We can also see a particular entry of dictionary by following method
# Syntax: name_of_dictonary["Key"]
phonebook["Contact_A"]

# We can delete a particular entry from a dictionary using pop!() method and simultaneously return that value for the key
# Syntax: pop!(name_of_dictonary, "Key")
pop!(phonebook, "Contact_B")

# To get the number of elements in a dictionary we can use length() method
length(phonebook)

# Tuples
# create them by enclosing sequential elements in ( )
my_fav_teams = ("Real Madrid", "Manchester United", "Inter Milan", "Bayern Munich")

# To get the number of elements in tuple we can use the length() method
length(my_fav_teams)

# as tuples are ordered, we can get them by indexing syntax
# julia index starts at 1 not 0
my_fav_teams[1]

# As tuples are immutable, we cannot update it
#my_fav_teams[4] = "Chelsea"
# Above line will give an error
# ERROR: MethodError: no method matching setindex!(::NTuple{4, String}, ::String, ::Int64)


# Arrays
# mutable, ordered
# create by enclosing sequence of element in [ ]
my_fav_movies = ["The Dark Night", "Pulp Fiction", "The man named Otto", "Shawshank Redemption"]
fibonacci = [1, 1, 2, 3, 5, 8, 13]

# we can also create array with multiple data types
my_arr = [1, "Julia", 2.0, "Python"]

# to get the element count in an array, we can use length() method
length(my_arr)

# to get a specific index element in array
my_arr[2]

# Adding an item in array, we use push! method
# Syntax: push!(array_name, element)
# it will add that element at the end of the array
push!(my_arr, "Java")
println(my_arr)

# To delete an element from an array we use pop! method
# Syntax: pop!(array_name)
# it will remove the last element from the array
pop!(fibonacci)
println(fibonacci)

# Multi Dimensional Array
grocerry_list = [["Bread", "Butter", "Milk", "Coffee Beans"],
                ["Rice", "Chicken", "Vegetables", "Spices"],
                ["Apple", "Banana", "Orange"]]


numbers = [[1, 2, 3],
            [4, 5],
            [6, 7, 8, 9],
            [10]]

# We use size() method to get the dimension of an array
# Syntax: size(array_name)            
size(numbers)

# We can create multidimensional array using rand() method as well
# By default the data type of rand() method is float64
#=
Syntax: rand() - generate numbers between 0 and 1
        rand(type) - generate specific type random numbers and the type is numeric
        rand(size) - generates an array of random numbers with dimensions specified by size. 
                    The size argument can be an integer or a tuple of integers indicating the 
                    size of each dimension of the array.
        rand(rows,columns) - generate a 2D array of random numbers with a specified number of rows and columns.
=#
rand(4,3)
rand(4,3,3)