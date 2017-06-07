function fizzbuzz(i::Int64, j::Int64, n::Int64)
  print(i*triangle(div(n,i)) + j*triangle(div(n,j)) - lcm(i,j)*triangle(div(n,lcm(i,j))))
end

function triangle(x::Int64)
  ans = div(x(x+1),2)
end

function fizzbuzz2(i::Int64, j::Int64, n::Int64)
  print(sum([x for x in range(1000) if x % 3 == 0 || x % 5 == 0]))
end

fizzbuzz(3,5,1000)
fizzbuzz2(3,5,1000)
