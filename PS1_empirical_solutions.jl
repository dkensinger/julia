muvec = [6,2,4]/100
onevec= ones(3)
V = ([8 -2 4; -2 2 -2; 4 -2 8])/1000
rf = .01

Xeq = [1/3, 1/3, 1/3]
println("expected returns:")
println(muvec)
println("Covariance matrix")
println(V)

Xeq_return = muvec.' * Xeq
println("Equal weight return:")
println(Xeq_return *100)

Xeq_vol = sqrt(Xeq.' * V * Xeq)
println("Equal weight volatility:")
println(Xeq_vol *100)

Xmin = 1/sum(inv(V) * onevec) * inv(V) * onevec
println("Minimum Variance weights:")
println(Xmin)

Xmin_return = 1/sum(inv(V) * onevec) * muvec.' * inv(V) * onevec
println("Minimum Variance return:", Xmin_return *100)

muhat = muvec - rf
Xsh = 1/sum(inv(V) * muhat) * inv(V) * muhat
println("Sharpe Optimum weights:")
println(Xsh)

Xsh_return = 1/sum(inv(V) * muhat) * muvec.' * inv(V) * muhat
println("Sharpe Optimum return:")
println(Xsh_return *100)

Xsh_var = 1/sum(inv(V) * muhat)^2 * muhat.' * inv(V) * V * inv(V) * muhat
Xsh_vol = sqrt(Xsh_var)
println("Sharpe Optimum volatility:")
println(Xsh_vol *100)

Sharpe_ratio = (Xsh_return - rf)/Xsh_vol
println("Sharpe ratio:")
println(Sharpe_ratio)

opportunity_vol = .05
opportunity_return = rf + Sharpe_ratio * opportunity_vol
println("return on 5% vol:")
println(opportunity_return *100)
