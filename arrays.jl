# Array
# An array is a collection of objects stored in a multi-dimensional grid.

# Initializing an array
arr = []

println(typeof(arr))
# If we don't assign any value to any variable, julia by default makes that variable datatype to Any

# Adding elements in array
# push!(arr_name, values_to_add)
push!(arr, "hello")

println(arr)

# There is another method for adding elements in array
# append!(array_name, elements_to_add)
append!(arr, "world")

println(arr)

# push insert the value as it is in the array but append breaks down the string to char and then inset it
append!(arr, [1, 2, 2, 4])

display(arr)
# append is helpful when we want to add aother array values as single element in our current array
# push cannot add another array inside of current array

# variable types for array
arr1 = [] # it will creat an empty array with type any

# we can create a 1-D int array without assigning any value to it using undef keyword
# undef will set an arbitary value for use
int_arr = Array{Int}(undef, 1)

# we can also change value of an array using it's index
int_arr[1] = 10

push!(int_arr, 2, 4, 6, 7, 9)

# If we want to push any variable which type is not int it will raise error
#push!(int_arr, 3.4)
#push!(int_arr, "Hello")

# But if we have a array which type is float, and we pass an int value, it will take the int value but it will convert the value first
float_arr = Array{AbstractFloat}(undef, 1)

float_arr[1] = 5

push!(float_arr, 3.7)

# if we want to have an array which will store the both int and float then we have to initialize an array with Real datatype
real_arr = Array{Real}(undef, 1)

push!(real_arr, 4, 5.7, 7, 9, 2.09)

# Array Constructions
# 5 element vector with zeros
# first argument is optional
arr_zero = zeros(Float64, 5)

arr_zero_2 = zeros(5)

# Just like zeros we have ones that can create vectors with 1
arr_ones = ones(3)

# we could also have rand method to create a vector with random values
arr_rand = rand(3)

# zeros, ones, rand all method by default create Vector{Float64} type
# to change this specific type we need to specify the type when creating the vector
int_rand_arr = rand(Int64, 7)

# we can also create array with predefined values
# syntax: [A, B, C, D] where variable A-D is Real type

arr = [1, 2, 3]
# The element type of the array is determined automatically using promotion rules.

# Julia allocates memory in a column fashion rather than row fashion
# that's why our output of array is column based

# If we use array literals without commas it will create a Matrix
mat = [1 2 3]

# Any array can only contain values of the type defined when it was created.
# If not it will be type Any

# we cal also create array with differt type of values and the array type will be Any
mix_arr = ["Name", 5.9, 22]

# Multi Dimensional Array
# In Julia, multi mimensional array is called Matrix
mul_dim_arr = Array{Float64}(undef, 3, 2)

mul_dim_arr[1, 1] = 10

mul_dim_arr

int_rand_mul_dim = rand(Int64, 3, 4)


# Array Comprehention
# Comprehensions provide a general and powerful way to construct arrays on the fly.
xarr = [i * 2 for i in 1:10]

# we could also do that
tmp = Int[]
for i in 1:10
  push!(tmp, i * 2)
end
tmp

# Comprehensions (also known as generator expressions when used without the enclosing square brackets)
# can be used in a variety of contexts. For example, if you wanted to add the values generated
# on the fly together, you could do this:
sum(i * 2 for i in 1:10)

# array creation with conditional values
arr_cond = [i for i in 1:10 if i % 2 == 0]

# Matrices can be built by including multiple indices:
[i * j for i in 1:5, j in 5:10]

# Vector indexing

# create an vector of all the alphabets from a to z.
# The string.() function is the string() function broadcast over the collection of characters.
A = string.(collect('a':'z'))

# To access an element we can use indexing
# In julia, indexing starts from 1
A[1]

# Range indexing
A[1:5]

# Indexing with another Vector:
A[[1, 2, 3]]

# Indexing with :
A[:]

# Indexing with begin and end
A[begin+2:end-10]

# we can also print an array in reverse order
A[end:-1:begin]


# Matrix Indexing
A = reshape(A, (13, 2))

A[1, 1]

A[1, 2]

A[2, 1]


# To get the first row
A[1, :]

# To get second column
A[:, 2]

# We can use slices in vector
A[1:5, 1:2]

# The dimension of the element returned may depend on the slices. For example, compare the following:
# returns matrix
A[1:3, [1]]
# returns vector
A[1:3, 1]

# We can change value with index as well
A[1, 1] = "A"

# If we want to change multiple values at once, we need to use broadcasting
A[1:5, 1:2] .= "X"

# Indexing in-details
# creating a 3-dimensional array with numbers 1-24
Arr = reshape(collect(1:24), (2, 3, 4))

#  reshape’s second argument is the size you want to convert it into, and the product of values
# in the size must be equal to the number of elements in the first argument,
# i.e in this case the length of the vector.

# The following example has all scalar indices:
Arr[1, 2, 3]


# The following example has all vector indices: Returns 2X2X1 Array
Arr[[1, 2], [2, 3], [1]]
# because the last index is just one element, this returns a 2x2x1 Array.

# Returns 2X2 Matrix
Arr[[1, 2], [2, 3], 1]
# This returns the same data, but returns it as a 2x2 Matrix instead.
# Previously it returned a Array{Float64, 3}

# In Julia, Vector{T} is the same as Array{T, 1} and Matrix{T} is the same as Array{T, 2}.

# can mix all kind of indices as well
Arr[1:2, :, 1]

# Julia arrays are in column-major

# Index Assignment
# The general syntax for assigning values in an n-dimensional array A is:
# A[I, J, K, ..., N] = X

# where,  I, J, K, … N can be a scalar integer or array of integers, : to select all indices,
# or ranges of the form a:b, or any other supported index.

# If I, J, K are all integers (i.e. scalars),
# the value in that location is overwritten with the value of X


A = collect(reshape(1:9, 3, 3))

# to change the value
A[1, 2] = -9

A

# If any of I, J, K … N are themselves arrays, then the right hand side (RHS)
# X must also be an array with the same shape as the result of indexing A[I, J, K, ..., N].

A[1:2, 1:2] = [0 0;
  0 0]
A


# When debugging,
# use the size(arr) function to make sure that the LHS and the RHS are the correct dimensions:
lhs = A[1:2, 1:2]
rhs = [0 0;
  0 0]

@show size(lhs)
@show size(rhs)

# If we try to use the incorrect dimensions on the RHS, Julia will throw an error: DimensionMismatch
A[1:2, 1:2] = [0 0]

# But we can do that with broadcasting if we want to change it with single element
A[1:2, 1:2] .= 10
A

# For one dimensional assignment, as long as the length is the same,
# whether it is columns or rows, the assignment will convert it appropriately.
A[1:2, 1] = [0 0]
display(A)

A[1, 1:2] = [0 0]
@show A

# Broadcasting
A = collect(reshape(1:9, 3, 3))

# in two special cases, you can use the broadcasting syntax.
# Case 1: RHS is a scalar
A[1:2, 2:3] .= 5

A
# If we do not use any indexing on the LHS,
# then Julia will set EVERY value in the array to the scalar value in the RHS.

# Case 2: RHS is an array
# You can also use broadcasting when the RHS is an array,
# and Julia will do an element by element setindex for every index in the LHS and RHS.
A = collect(reshape(1:9, 3, 3))

A[1:2, 1:2] .= [10 40; 20 50]
A

# If you don’t make sure you use the same dimensions in the LHS and the RHS,
# you’ll get a DimensionMismatch error

# Multi-dimensional arrays and using String indexing
Area = ["Ontario", "Quebec", "British Columbia"]

Enduse = ["Space Heating", "Water Heating", "Refrigeration", "Lighting"]
Year = ["2020", "2021", "2022"]

# to create a multi dimensional array using above 3 sets
mul_dim_arr = zeros(length(Area), length(Enduse), length(Year))

#=
The Select function takes 2 arguments, a set and an optional argument key (which is nothing by default).

It returns:
- the first index of the set that matches the key if the you pass in a key that exists,
- all the indices of the set if you don’t pass in any key, or
- throws an error if if you pass in a key that does not exist.
=#


Select(set::Vector{String}, key=nothing) =
  key === nothing ? collect(eachindex(set)) :
  (!isnothing(findfirst(==(key), set)) ? findfirst(==(key), set) : error("Unable to find \"$key\" in $set"))

# returns the index of "Ontario" in `Area`
Select(Area, "Ontario")

# throws an error because `Coal` does not exist in `Area`
Select(Area, "Coal")

# returns all indices of `Area`
Select(Area)


# Keep in mind that Select does not change the values in Area at all, ever.
# All it does is return the value or values of the corresponding indices.

# If I wanted to get the values for Area = "Ontario", Enduse = "Lighting" and Year = "2021".
area = Select(Area, "Ontario")
enduse = Select(Enduse, "Lighting")
year = Select(Year, "2021")
mul_dim_arr[area, enduse, year]

# If I wanted to set all values in mul_dim_arr for every Area and for every Enduse,
# but only for 2021, to 1.0, I could do it like so:

mul_dim_arr[:, :, Select(Year, "2021")] .= 1.0
mul_dim_arr

# Because we defined the Select function to return all the indices
# if the second argument of the Select function was nothing (which is the default value),
# we can even do this if we want to make the code easier to read:

mul_dim_arr[Select(Area), Select(Enduse), Select(Year, "2021")] .= 2.0
mul_dim_arr

# Let’s say you wanted to set the value of mul_dim_arr for the "Ontario" Area and
# "Lighting" Enduse, for 2020 to .5.
mul_dim_arr[Select(Area, "Ontario"), Select(Enduse, "Lighting"), Select(Year, "2020")] = 0.5
mul_dim_arr

# If you wanted to print out the values for debugging, that’s just a quick for loop:
for year in Select(Year)
  for enduse in Select(Enduse)
    for area in Select(Area)
      if !(mul_dim_arr[area, enduse, year] ≈ 0.0)
        println("$(Year[year]), $(Enduse[enduse]), $(Area[area]), $(mul_dim_arr[area, enduse, year])")
      end
    end
  end
end

# In Julia, nested for loops can be shortened to one line. So this does the same thing as before:
for year in Select(Year), enduse in Select(Enduse), area in Select(Area)
  # the infix isapprox function.
  if !(mul_dim_arr[area, enduse, year] ≈ 0.0) # or if mul_dim_arr[area, enduse, year] != 0.0
    println("$(Year[year]), $(Enduse[enduse]), $(Area[area]), $(mul_dim_arr[area, enduse, year])")
  end
end

# But because of floating point precision errors,
# we won’t get the correct answer. For example, the following equality will be false in Julia
1e-16 == 0.0

# You can type the infix isapprox by using \approx<TAB>.
# Alternatively, we could use the isapprox function:

!isapprox(mul_dim_arr[area, enduse, year], 0.0)

# we can create Dataframe like this
using DataFrames

rows = []
for year in Select(Year), enduse in Select(Enduse), area in Select(Area)
  if !(mul_dim_arr[area, enduse, year] ≈ 0.0) # remove this `if` and corresponding `end` if you want all values
    push!(rows, (parse(Int, Year[year]), Enduse[enduse], Area[area], mul_dim_arr[area, enduse, year]))
  end
end

df = DataFrame(rows)
first(df, 5) # Only print first 5 rows

# While we are at it, let’s rename the columns to something more meaningful:
rename!(df, ["Area", "Enduse", "Year", "DmFrac"])
df

# And I could output to a CSV file like so:
#using CSV
#CSV.write("DmFrac.csv", df)
