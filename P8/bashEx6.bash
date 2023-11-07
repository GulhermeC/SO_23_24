echo "----------------- Part 1 -----------------"
echo

# In the following example, the output of a group of commands is redirected to a file
{
    ls
    echo ========================
    ls
} > z
cat z

echo
echo "----------------- Part 2 -----------------"
echo

# In the following example, the output of a group of commands is redirected to a file
(
    ls
    echo ========================
    ls
) > zz
cat zz

echo
echo "----------------- Part 3 -----------------"
echo

# variable zzz within the {..} group is the same as out of it,
# because every thing happens in the same shell scope
zzz=abc
echo "$zzz (out of group)"
{
    echo "$zzz (within group)"
    zzz=xpto
    echo "$zzz (within group)"
}
echo "$zzz (out of group)"

echo
# variable zzz within (..) group is not the same as out of it,
# so the assignment done within the subshell does not affect variable zzz out of it

zzz=abc
echo "$zzz (out of group)"
(
    echo "$zzz (within group)"
    zzz=xpto
    echo "$zzz (within group)"
)
echo "$zzz (out of group)"