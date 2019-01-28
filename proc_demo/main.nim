var result :string
var concat_result :string
var multiply_result :int

#single line  proc or function
proc concat(name: string): string = echo "Hello " & name

result = concat("Mandeep")

# multi line proc or function
proc concat_two_strings(string1: string, string2: string) :string = 
    echo string1 & " " & string2;
    echo string2 & " " & string1;

concat_result = concat_two_strings("Apple","Banana")

# define a proc without defining return type
# define a defualt as well in case user doesn't supply
proc multiply(num1 = 5, num2 = 5): auto = return num1 * num2

multiply_result = multiply(2,2)
echo "multiplicaion : " : multiply_result

# call the default
multiply_result = multiply()
echo "multiplicaion : " : multiply_result

proc words_starts_with_a(words: varargs[string]) :string = 
    var results = ""
    for word in words:
        if word[0] == 'A':
            results.add(word & ": True, \n")
            
        else:
            results.add(word & ": False, \n")
    return results

echo words_starts_with_a("Apple","Mango","Apricot")

var greeting = "Hello World"
#indexing starts from 0
echo greeting[5 .. ^1]  # this is transformed by the compiler to this expression. Output: World
echo greeting[5 .. (len(greeting)-1)] #output: world
echo greeting[5 .. ^(greeting.len-greeting.high)]
echo greeting.high  # output:10
echo greeting.substr(5) # output World