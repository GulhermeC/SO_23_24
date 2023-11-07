bash bashEx11.bash
bash bashEx11.bash xpto abc zzz
rm -f abc
bash bashEx11.bash abc

mkdir dir1
cd dir1

seq -w 100 -1 1 > xpto
cat xpto
echo
bash ../bashEx11.bash xpto

cd ..