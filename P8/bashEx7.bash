echo "----------------- Part 1 -----------------"
echo

ls
echo $?             # should display 0, because the previous command succed

rm zzz              # to guarantee file zzz does not exist
echo $?             # should display 1, if the file zzz does not exist

test -f zzz
echo $?             # should display 1, because file zzz does not exist

touch zzz
test -f zzz
echo $?             # should display 0, becuase the file exists

echo
echo "----------------- Part 2 -----------------"
echo

touch zzz           # to guarantee file zzz exists

if test -f zzz
then
    echo "File zzz exists"
else
    echo "File zzz does not exist"
fi

check()
{
    if test -f $1
    then
        echo -e "\e[33mFile zzz exists\e[0m"
    else
        echo -e "\e[31mFile zzz does not exist\e[0m"
    fi
}

touch zzz
check zzz

rm -f zzz
check zzz

echo
echo "----------------- Part 3 -----------------"
echo

check()
{
    if [ -f $1 ]        # the brackets should appear isolated
    then
        echo -e "\e[33mFile zzz exists\e[0m"
    else
        echo -e "\e[31mFile zzz does not exist\e[0m"
    fi
}

touch zzz
check zzz

rm -f zzz
check zzz

echo
echo "----------------- Part 4 -----------------"
echo

rm -f zzz
if  ! test -f zzz
then
    echo "File zzz does not exist"
fi

# or, equivalently
if ! [ -f zzz ]
then
    echo "File zzz does not exist"
fi

echo
echo "----------------- Part 5 -----------------"
echo

# the command following \verb!&&! only executes if the previous succed
touch zzz
test -f zzz && echo "File zzz exists"

# the command following \verb!||! only executes if the previous fails
rm -f zzz
test -f zzz || echo "File zzz does not exist"