#!/bin/bash

# Set files
FILES=$(find src -regex ".*\.\(rs\)")

# Print files
echo -e "\e[0;1minfo:\e[0;0m Checking formatting..."

# Check formatting
rustfmt $FILES --check
if [ $? -eq 0 ]; then
    echo -e "\e[1;32msuccess:\e[0;0m Format check successful"
else
    echo -ne "\n"
    echo -e "\e[1;31merror:\e[0;0m The files don't match the required format!"
    echo -e "\e[1;31merror:\e[0;0m You will need to run 'rustfmt' without the --check flag to format the files."
    exit 1
fi;

# Exit
exit 0
