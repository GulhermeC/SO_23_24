echo "----------------- Part 1 -----------------"
echo

# the following code defines function x
myls()
{
    ls -ltrh
}

# the following code calls the previously defined function myls
myls

# you can use it as any other command
# Here, piping its output to the word count command
myls | wc -l

echo "----------------- Part 2 -----------------"
echo

# definition of function y
y()
{
    echo $#         # number of arguments
    echo $1         # the first argument
    echo $2         # the second argument
    echo $*         # the list of all arguments
    echo $@         # idem
    echo "$*"       # idem
    echo "$@"       # idem
}

y a bb ccc dddd eeeee
echo

y a "b b" ccc 'dd       dd' eeeee