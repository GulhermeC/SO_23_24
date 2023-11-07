# executed without options
# ls prints the list of not hidden files in the current directory 

touch .dummy    #create a file named ".dummy"
echo "Executing 'ls' "
ls              # file ".dummy" does not show up
echo 

# option -a includes all hidden files in the list
echo "Executing 'ls -a' "
ls -a           # now, file ".dummy" appears in the list, but also . and ..
echo 

# optiong -A includes all hidden files except . and ...
echo "Exectuing 'ls -A' "
ls -A
echo 

# option -l prints file properties along with the name
echo "Executing 'ls -l'"
ls -l           # not including the hidden files
echo

echo "Executing 'ls -la'"
ls -la          # including also the hidden files
echo

# option -t prints files sorted by modification time, newest first
echo "Executing 'ls -lt'"
ls -lt
echo

# the following command shows a list of all bash commands
echo "Executing 'help'"
help
echo

# the following command shows a description of the internal command cd
echo "Executing 'help cd'"
help cd
echo