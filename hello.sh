#!/bin/bash

say_hello() {
    # Prompt for first name
    printf "Enter your first name: "
    read -r first_name
    
    # Prompt for last name
    printf "Enter your last name: "
    read -r last_name
    
    # Output the greeting with the full name
    echo "Hello World! Welcome ${first_name} ${last_name}!"
}

# Only run the function if the script is being executed directly
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    say_hello
fi 