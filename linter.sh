# Getting all the markdown file names in a formatted pattern(without './')
filenames=$(find . -name "*.md" -exec sh -c 'echo "${1#./}"' _ {} \;)
# echo $filenames
pwd=$(pwd)
pattern='^> \*\*Note\*\*'

# Iterating over the markdown files
for filename in ${filenames}; do

    # Checking for a the regex pattern in each file
    matches=$(grep -n -H -E "$pattern" $filename)
    if [ "$matches" != "" ]; then
        # printf "found a match:   "
        printf "$matches"
        printf "\n"
    fi
    # if ${matches} == *$'0-9'; then
    #     printf "empty line for not matching"
    # else
    #     printf "*********Matched*********"
    #     printf "\n"
    # fi
    # matches=$(grep "^\*\*Note\*\*:" $(echo $filename))
    # echo "${matches}"
    # printf "$filename"
    # printf "\n"
done

# if grep --color=always -E 'foo' /home/user/myrepo/*.txt &> /dev/null; then
#   echo "Pattern 'foo' found"
# else
#   if grep --color=always -E 'bar' /home/user/myrepo/*.txt &> /dev/null; then
#     echo "Pattern 'bar' found"
#   else
#     echo "Error: neither 'foo' nor 'bar' pattern found"
#   fi
# fi


# if grep --color=always -E '^\*\*Note\*\*:' /oppia-web-developer-docs/*.md &> /dev/null; then
#     echo "ERROR: Wrong Note notation on line "
# fi
# if grep --color=always -E '^\*\*Warning\*\*:' /oppia-web-developer-docs/*.md &> /dev/null; then
#     echo "ERROR: Wrong Warning notation on line "
# fi