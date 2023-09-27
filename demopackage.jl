# Everything in editor is related to file
@__FILE__
@__DIR__
pwd()

module TestModule

hello(name::String) = "hello, $name"
function rationalish(x, y)
  return x // y
end

struct CustomStruct
  x
end
CustomStruct() = CustomStruct(1)

end


TestModule.hello("Julia")

TestModule.rationalish(5, 2)

TestModule.rationalish(4, 2)
