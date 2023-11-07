echo "----------------- Part 1 -----------------"
echo

# assign 'abc' to variable x and '0123456789' to variable xx
x=abc
xx=0123456789

# display the values of variables x and xx
echo "Executing 'echo \${x}'"
echo ${x}
echo

echo "Executing 'echo \$x'"
echo $x
echo

echo "Executing 'echo \${xx}'"
echo ${xx}
echo

echo "Executing 'echo \$xx'"
echo $xx
echo

# display a string composed of the value of x concatenated with string 'x'
echo "Executing 'echo \${x}x'"
echo ${x}x
echo

# display a string composed of the string 'x' concatenated with the value of variable x
echo "Executing 'echo x\${x}'"
echo x${x}
echo

mkdir dir5
cd dir5
touch a1 a2 a3 a4 a22

echo "Executing 'z=a*'"
z=a*
echo

echo "Executing 'ls \$z'"
ls $z
echo

echo "Executing 'echo \$z'"
echo $z
echo

cd ..
echo "----------------- Part 2 -----------------"
echo

mkdir dir6
cd dir6

touch a1 a2 a3 a4 a22
z=a*

echo "Executing 'echo \$z'"
echo $z
echo

echo 'Executing echo "$z"'
echo "$z"
echo

echo "Executing 'echo '\$z''"
echo '$z'
echo

echo "----------------- Part 3 -----------------"
echo

x=0123456789

echo "Executing 'echo \${x:2:4}'"
echo ${x:2:4}
echo

echo "Executing 'echo \${x/123/ccc}'"
echo ${x/123/ccc}
echo