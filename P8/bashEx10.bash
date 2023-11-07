echo "----------------- Part 1 -----------------"
echo

mkdir dir1
cd dir1

f2()
{
    while [ $# -gt 0 ]
    do
        echo "==== $1 ====" > $1
        shift
    done
}
rm -f abc xpto zzz      # to guarantee they do not exist
f2 abc xpto zzz
cat xpto
cat abc
cat zzz

cd ..

echo
echo "----------------- Part 2 -----------------"
echo

mkdir dir2
cd dir2

f3()
{
    until [ $# -eq 0 ]
    do
        echo "==== $1 ====" > $1
        shift
    done
}
rm -f abc xpto zzz      # to guarantee they do not exist
f3 abc xpto zzz
cat xpto
cat abc
cat zzz

cd ..