function prnt_bin(n)
        [binomial(n, i) for i = 0:n]
end

function atleast(k, n)                          # prob of at least k out of n with p=0.5
        num = sum([binomial(n, i) for i = k:n]) # sum of binomial coefficients
        den = 2^n                               # all possible outcomes
        num/den
end

atleast(12,15)




