echo "----------------- Part 1 -----------------"
echo

z()
{
    case $# in
    0)
        echo "No arguments were given"
        # a double ;; is used to end a branch
        ;;
    1)
        echo "One argument was given"
        ;;
    2|3)
        # a !|! in a pattern defines an alternative
        echo "Two or three arguments were given"
        ;;
    *)
        # a !*! means any value
        # being the last branch, it represents the otherwise values
        echo "More than three arguments were given"
        ;;
    
    esac
}

z
z aa
z aa bb
z aa bb cc
z aa bb cc dd
z aa bb cc dd ee