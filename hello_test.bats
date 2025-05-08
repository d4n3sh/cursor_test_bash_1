#!/usr/bin/env bats

# Load the script
source hello.sh

@test "say_hello prompts for name and outputs greeting" {
    # Simulate user input
    run say_hello <<< "John
Doe"
    
    # Check if the prompts were shown
    [[ "$output" == *"Enter your first name:"* ]]
    [[ "$output" == *"Enter your last name:"* ]]
    
    # Check if the final output contains the greeting with the name
    [[ "$output" == *"Hello World! Welcome John Doe!"* ]]
} 