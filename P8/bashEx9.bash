mkdir dir1
cd dir1
echo "----------------- Part 1 -----------------"
echo

touch a1 a2 a77 abc b1 c12 ddd
ls
prefix="_a_"
for f in a1 a2 a77 abc b1 c12 ddd
do
    echo "changing the name of \"$f\""
    mv $fs $prefix$f
done
ls

cd ..
echo
echo "----------------- Part 2 -----------------"
echo
mkdir dir2
cd dir2

f1()
{
    for file in $*
    do
        echo "==== $file ====" > $file
    done
}

f1 abc xpto zzz
cat xpto
cat abc
cat zzz