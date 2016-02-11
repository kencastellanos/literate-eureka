## Collection Types

#Matrices

matrix = [1 2; 3 4]

matrix[2, 1]

# Random matrix between 0 and 1

ma1 = rand(3, 5)

ndims(ma1)
size(ma1)
size(ma1, 1)
size(ma1, 2)

nrows, ncols = size(ma1)

idm = eye(3)

# both of these return the entire second column
idm[1:end, 2]
idm[:, 2]


# Code in chapter 5 / dicts.jl

d1 = Dict(1 => 4.2, 2 => 5.3 )
d2 = Dict(:firstn => "Austin", :lastn => "Castellanos")
d2[:firstn]

d3 = Dict(:A => 100 , :B => 300)

## Now :Z doesn't exist in d3 so we get an error if we run
# d3[:z]

# We can get around this by assigning a default value if the
# name value doesn't exist

get(d3, :Z, 999)

# Returns 999 as a default value since :Z does not exist
# we can also check that :Z is in d3 with

(:Z => 999) in d3 #returns false

# Remove a key mapping
delete!(d3, :B)

# Isolating keys

keys(d3) # prints out :A and :B

# Checking if a key exists
:A in keys(d3) #true
:Z in keys(d3) #flase


