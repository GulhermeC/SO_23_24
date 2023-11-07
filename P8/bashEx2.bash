# message "ola" is sent to the terminal display window
echo "Executing 'echo ola' "
echo ola
echo

# message "ola" is sent to file "z",
# any previous content of it being deleted
echo "Executing 'echo ola > z' "
echo ola > z
echo

# message "ola" is appended to the end of file "z";
# file "z" is created if it does not exist yet
echo "Executing 'echo ola >> z' "
echo ola >> z
echo


# Guarantee file "zzz" does not exist
rm -f zzz

# an error message is sent to the terminal display window
echo "Executing 'cat zzz' "
cat zzz
echo

# the error message is sent to file "error"
# any previous content of it being deleted
echo "Executing 'cat zzz 2> error'"
cat zzz 2> error
echo

# the previous message is appended to the end of file "z"
echo "Executing 'cat zzz 2>> z' "
cat zzz 2>> z
echo

echo "Executing 'cat z' "
cat z
echo

echo "Executing 'cat zzz > zz' "
cat zzz > zz
echo

# the following command sends to the terminal display window
# the contents of file "/ect/passwd"
echo "Executing 'cat /etc/passwd' "
cat /etc/passwd 
echo

# the following piping of commands prints in the terminal display window
# the number of lines of file "/etc/passwd"
echo "Executing 'cat /etc/passwd | wc -l' "
cat /etc/passwd | wc -l
echo

# Guarantee zzz does not exist
rm -f zzz

# in the following command, the standard error is not redirected,
# so the error message appears in the terminal
echo "Executing 'cat zzz > err'"
cat zzz > err
echo

# in the following command, the standard error is redirected
# to the same file as the standard output,
# so the error message is sent to file 'err'
echo "Executing 'cat zzz > err 2>&1'"
cat zzz > err 2>&1
echo

# to check the error message is there
echo "Executing 'cat err'"
cat err
echo

# in the following command, the standard output is not redirected
echo "Executing 'cat /etc/passwd 2> z'"
cat /etc/passwd 2> z
echo

# in the following command, the standard output is redirected
# to the same file as the standard error
echo "Executing 'cat /etc/passwd 2> z >&2'"
cat /etc/passwd 2> z >&2
echo

echo "Executing 'cat z'"
cat z
echo