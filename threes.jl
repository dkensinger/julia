println("Enter your number:")
number = parse(Float64, strip(readline()))

function threes (input::Float64, sum::Float64=0., output::ASCIIString="")
  if input === 1.
    if sum === 0.
      return "\nSolution:\n$output\n1"
      done = true
    else
      return null
    end
  elseif input >= 3.
    for i=-2.:2.
      if (input + i) % 3. === 0.
        result = threes((input + i) / 3., sum + i, "$output\n$input | $i")
        if result != null return result end
      end
    end
  end
  return null
end

result = threes(number)
if result != null
  println(replace(result, r"[.0]{2}", ""))
else
  println("\nImpossible.")
end