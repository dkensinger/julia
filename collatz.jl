using Gadfly

function collatz (n)
        step = 1
        while n > 1
                step = step + 1
                if n % 2 == 0
                        n = n / 2
                else
                        n = 3n + 1
                end
        end
        return step
end
N = 1000
big_list = [collatz(n) for n = 1:N]

plot(x=collect(1:N), y=big_list)
# draw(PNG("collatzplot.png", 9inch, 5inch), finalplot)
