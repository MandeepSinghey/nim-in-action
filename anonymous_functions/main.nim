import sequtils
# define a array
let numbers = @[1,2,3,4,5,6,7,8]
# define a lambda python function to filter
let odd = filter(numbers, proc (x:int) :bool = x mod 2 != 0)
echo odd