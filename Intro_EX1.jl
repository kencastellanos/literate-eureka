## Julia script for introduction to julia

for i in 1:2:9
	println(i)
end

k(x; a1 = 1, a2 = 2) = x * (a1 + a2)

k(3)

k(3, a2 = 3)

function(x)
	y = x + 2
	return y 
end

# Numerical Derivative

function numerical_derivative(f, x, dx=0.01)
	derivative = (f(x+dx)-f(x-dx))/(2*dx)
	return derivative
end

f = x -> 2x^2 + 30x + 9

println(numerical_derivative(f, 1, 0.001))

function derivative(f)
	
	return function(x)
	
	#pick small value for h
	h = x == 0 ? sqrt(eps(Float64)) : sqrt(eps(Float64))*x
	
	xph = x + h
	dx = xph - x
	
	f1 = f(xph) # evaluate f at x+h
	f0 = f(x) # evaluate f at x
	
	return (f1 - f0)/dx  #divide by h
	end

end

function mult(x,y)
	println("x is $x and y is $y")
	if x == 1
		return y 
	end
	x*y
end

function multi(n, m)
	n*m, div(n,m), n%m
end

## Array functions
# functions with a '!' changes the first argument

b = 1:7; c = linspace(100,300,3)

append!(b,c)
# now b is [1,2,3,4,5,6,7,100,200,300]

pop!(b)
#removes the last element

push!(b, 42)
#addes 42 as the last element to b

# ----------------------------------------------------------------

# Newton's numerical method

x1 = 42
for i in 1:10
	
	x2 = x1 - (f(x1)/numerical_derivative(f, x1, 0.000001))
	
	println(f(x2))
	
	x1 = x2

end

# Numerical computation of the Jacobian matrix in a nonlinear system

function fx1(x1, x2)
	return x1^2 - 3*x2 + 5
end

function fx2(x1, x2)
	return x2^2 - 4*x1 + 7
end

