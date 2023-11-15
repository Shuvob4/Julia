# REPL - Read, Evaluate, Print, Loop

println("Hello, World!")

# In println() method, we can mix both numbers and strings together
println(3 * 5.2, "..... evaluated!")

# In julia, Strings are immutable, we can put strings together
# but we cannot change a string

# To concatanate a string in julia we use '*' operator
println("Hello, World !" * " I am writting program in Julia.")

# to repeat a string multiple time we use '^' operator
println("Hello World !" * "I love programming "^3)

# Arithmetic Operations
println(1/2/3) # The operator goes form left to right: when we have multiple operator same level
println(2-3+4) # same as above

# But it's not always same: left to right
println(2/3^2) # here, ^ operator get executed first then / operator, due to the higher order of precedence of operator


"""
In Julia, the order of arithmetical operation is as follows
- do the insides of parenthesis first
- then do the exponentiation
- then do multiplication and division from left to right
- finally, do addition and substraction from left to right
Exception:
- exponentiation operator is different from other four types of operator, 
  if multiple exponentiation operators are stacked together, they operate right to left unless we 
    break them with parenthesis
"""
println( 3^2^3 ) # exponentiation right-to-left as Julia convention
println((3^2)^3) # forcing left to right using parenthesis

# Logical Expressions
# julia also operate from left to right for logical operator
# short-circuit evaluation of logical expression
# expression starting with "false &&" can never be true
# expression starting with "true ||" can never be false
# whenever such situation is reached in Julia, evaluation of expression is stopped
# example: true || p1(x) - p1(x) never executed
# if we change the expression true && p1(x), then p1(x) is executed and value of p1(x) is returned


# Types
# types are formats for storing information
# Julia is very sensitive to type
# typeof() - to determine the type of a variable
# Concrete Types - have no subtypes
# Int64, Float64
# String, Char
# Bool
# abstract types - have sub types
# Real, Integer
typeof("H") # returns String
typeof('H') # returns Char
# Julia has a strict comparison operator "===" 
# "===" compares both type and value
2.0 === 2 # returns false, as they are different types

# The actual type of value in Julia must always be a Concrete type.
# abstract type comes when
# 1. some operations change the type of a v alue by promotion; abstract type help to guide this process
# 2. functions are written to operate on types. If we write funcction to use an abstract type, it will work for all the types underneath that abstract type.

# Array
# Syntax: Array{DataType}(values, number of elements or dimensions)
# undef - means no values were given
# will create 3 * 1 array
Array{Int64}(undef, 3) 

# Naming convention
# User-defined variables should avoid capital letters
# User-defined types and modules usually have initial capitals
# Camel case is aslo reserve for the names of types and modules

# functions
