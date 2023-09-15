# Function
#= 
    - function and end keyword 
    Declaration Syntax:
        function function_name(arg)
            *function body*
        end
    Calling Syntax:
        function_name(arg)
=#
function greetings(name)
    println("Hello $name, It's nice to meet you.")
end

greetings("Chandler")

#=
    - function in single line
    Declaration Syntax:
        function_name(arg) = *function body*
    Calling Syntax:
        function_name(arg)
=#

func_hello(name) = println("Hello $name, Long time no see.")
func_hello("Ross")

#= 
    - anonymous function
    Declaration Syntax:
        function_name = arg -> * function body*
    Calling Syntax:
        function_name(arg)
=#

hello_joey = name -> println("$name, At last you come, we can start partying !!")
hello_joey("Joey")

# Duck-typing
# Julia function works on whatever input make sense
# f will work on a matrix
function f(arg)
    arg^2
end

A = rand(3, 3)
A

f(A)

# function f will not work on vector
v = rand(3) # initializing a vector vector
f(v)
#=
In this case, the square of vector is not a well defined function.
=#

#=
 - Mutating functions
    - returns an alternate version of the input that we provide
    - function name followed by the "!" sign
 - Nonmutating functions
    - Do not alter their input
=#

array_v = [3,7,5,1,8]
#nonmutating function
sort(array_v)
#mutating function
array_v
sort!(array_v)
array_v

#=
- Broadcasting
    - By placing a . between any function name and it's argument list
    - instruct the function to broadcast over the elements of the input objects
=#
# To-Do: Need to understand more about Broadcasting

array_a = [i + 3*j for j in 0:3, i in 1:4]

f(array_a)
#=
f(array_a) = array_a^2 = array_a * array_a
=#

f.(array_a)
#=
f.(array_a) will return an object that holds the square of A[i, j] at it's corresponding entry
=#

# we can broadcast over one dimentional array or vector
f.(v)