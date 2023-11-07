echo "----------------- Part 1 -----------------"
echo

mkdir dir1
cd dir1
touch a a1 a2 a3 a11 b b1 b11 b12 b21   # create some files

echo "Executing 'ls'"
ls
echo

echo "Executing 'ls a*'"
ls a*
echo

echo "Executing 'ls *1'"
ls *1
echo

echo "Executing 'ls a?'"
ls a?
echo

echo "Executing 'ls b??'"
ls b??
echo

echo "Executing 'ls b?*'"
ls b?*
echo

echo "Executing 'ls *'"
ls *
echo

cd ..
echo "----------------- Part 2 -----------------"
echo

mkdir dir2
cd dir2
touch a a1 a2 a3 a11 b b1 b11 c c11     # create some files

echo "Executing 'ls'"
ls
echo

echo "Executing 'ls [ac]'"
ls [ac]
echo

echo "Executing 'ls [a-c]'"
ls [a-c]
echo

echo "Executing 'ls [a-c]?'"
ls [a-c]?
echo

echo "Executing 'ls [ab]*'"
ls [ab]*
echo

cd ..
echo "----------------- Part 3 -----------------"
echo

mkdir dir3
cd dir3
touch a1 a2 a3 a4 a22                   # create some files

echo "Executing 'echo a*'"
echo a*
echo

echo "Executing 'echo a\*'"
echo a\*
echo

echo "Executing 'echo a?'"
echo a?
echo

echo "Executing 'echo a\?'"
echo a\?
echo

echo "Executing 'echo a\['"
echo a\[
echo

echo "Executing 'echo a\\'"
echo a\\
echo

cd ..
echo "----------------- Part 4 -----------------"
echo

mkdir dir4
cd dir4
touch a1 a2 a3 a4 a22                   # create some files

echo "Executing 'echo a*'"
echo a*
echo

echo 'Executing echo "a*"'
echo "a*"
echo

echo "Executing 'echo 'a*'"
echo 'a*'
echo