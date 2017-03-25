function fizzbuzz(i::Integer, j::Integer, n::BigInt)
    print(i*triangle(div(n,i)) + j*triangle(div(n,j)) - lcm(i,j)*triangle(div(n,lcm(i,j))))
end

function triangle(x)
  ans = x(x+1)/2
end


fizzbuzz(3,5,10000000000)
