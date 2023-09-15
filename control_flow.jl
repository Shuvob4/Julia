#While loop
#= Syntax:
    while * condition *
        * loop body *
    end

    Usage:
    - count or iterate over array
=#
m = 0
while m < 10
    global m += 1
    println(m)
end

my_fav_tv_shows = ["Friends", "Breaking Bad", "Naruto"]
i = 1
while i <= length(my_fav_tv_shows)
    tv_show = my_fav_tv_shows[i]
    println("I love watching $tv_show over and over again")
    global i += 1
end

# for loop
#= Syntax:
    for *var* in *loop iterable*
        *loop body*
    end

    We can replace "in" with "=" 

    Usage:
    - same as while loop
=#
for n in 1:10
    println(n)
end

for tvshows in my_fav_tv_shows
    println(tvshows)
end


for x = 1:10
    println(x)
end

# using for loops for nested loops
a, b = 5, 5
A = zeros(a, b)

for i in 1:a
    for j in 1:b
        global A[i, j] = i + j
    end
end
println(A)

# We can achieve the nested for loop via condesing it as well
B = zeros(a, b)

for i in 1:a, j in 1:b
    global B[i, j] = i + j
end
println(B)

# We can achieve the same thing in more Julian ways
#Array Comprehension
# we don't need to initialize the array beforehand
C = [i + j for i in 1:a, j in 1:b]
println(C)

# Embeded array comprehension with for loop, generating additional tables of growing size
for n in 1:10
    D = [i + j for i in 1:n, j in 1:n]
    display(D)
end

# Conditionals
#=
    Syntax:
    if *condition 1*
        *option 1*
    elseif *condition 2*
        *option 2*
    else
        *option 3*
    end

    Usage:
    - conditionally evaluate one of the available options
=#
x = 1
y = 4
if x > y
    println("x is greater than y")
elseif y > x
    println("y is greater than x")
else
    println("x and y are equal")
end

# We can do the same thing with tenary operator
#= Syntax:
    a ? b : c
    a - is the condition
    b - is the output if condition is true
    c - is the output if condition is false
=#
(x > y) ? x : y 

#short-circuit evaluation
#= syntax:
    a && b
    b will execute only if a is true
=#
(x > y) && println("x is greater than y")
(y > x) && println("y is greater than x")