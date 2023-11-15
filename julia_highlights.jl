# Julia Topics in a nutshell

# declaring variables
var_1 = 4
var_2 = 4.5
var_3 = "Hello"
var_4 = 'a'

# Julia uses typeof() method to get the variable type
println("Type of var_1 is:", typeof(var_1), " and Value of var_1 is :$var_1")
println("Type of var_2 is:", typeof(var_2), " and Value of var_2 is :$var_2")
println("Type of var_3 is:", typeof(var_3), " and Value of var_3 is :$var_3")
println("Type of var_4 is:", typeof(var_4), " and Value of var_1 is :$var_4")

# Control flow
if var_1 < 0
  println("var_1 is negative")
else
  println("var_1 is positive")
end

# Function Declaration
function summation(var1, var2)
  return var1 + var2
end

println(summation(var_1, var_2))

# Arrays
var_5 = [1 2;
  3 4;
  5 6]
var_6 = [11 12;
  13 14;
  15 16]

println("Type of var_5 is:", typeof(var_5))
println("Type of var_6 is:", typeof(var_6))

arr = var_5 + var_6

# Will Raise error, as we trying to operate array with simple int value
#arr_two = var_6 + var_2
# But we can do element wise operation
arr_two = var_6 .+ var_2

# For Loop
xarr = [i for i in 1:20] # Array Comprehension

for i in 1:20
  xarr[i] *= 2
end

display(xarr)
