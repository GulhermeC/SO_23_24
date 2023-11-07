echo
echo "----------------- Part 1 -----------------"
echo

a[1]=aaa
echo ${a[1]}        # the ${..} is mandatory to access array elements

echo
# the ’declare -a’ may be used to said the variable is an array element
declare -a a[2]=bbb

# integer arithmetic expression are allowed
a[2+3]=eee

# there is a construction to represent all elements of an array
echo "Elements of array: "
echo ${a[*]}
echo

# there is a construction to represent the number of elements of an array
echo "Number of elements of array: "
echo ${#a[*]}
echo

# there is a construction to represent the list of element indices of an array
echo "Represent the list of element indexes: "
echo ${!a[*]}
echo

# iterating through the list of elements
for v in ${a[*]}
do
    echo $v
done

# iterating through the list of indices
for i in ${!a[*]}
do
    echo "a[$i] = ${a[$i]}"
done

echo
echo "----------------- Part 2 -----------------"
echo

# declaring and populating an associative array (map)
declare -A arr
arr["homem"]=man
arr["papel"]=paper
arr["olá"]=hello
arr["lição"]=lesson

# the same construction as before can be used to manipulate the array
echo "Elements of array: "
echo ${arr[*]}          # the list of elements in the array
echo
echo "Number of elements of array: "
echo ${#arr[*]}         # the number of elements in the array
echo
echo "Represent the list of indexes used: "
echo ${!arr[*]}         # the list of indices used in the array
echo

# iterating through the list of indices
for i in ${!arr[*]}
do
    echo "The mapping of \"$i\" is \"${arr[$i]}\""
done