# loops and functions
v = letters[1:10]
v
for (l in v) {
  print(l)
}

# Functions
f = function(a, b=1) {
  return (a * b)
}
f(10)

#Short form
f2 = function(a,b=1) a*b
f2(10)

# Optional arguments
f(10,3)
f(10, b=2)

# Functions also work on DF, if arguments work on DF
df = iris
f(df) #Species is categorical data no multiplication possible. 
      #Still R does something

df$Species = NULL 

f(df)
f(df,b=10)
