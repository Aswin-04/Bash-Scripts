#!/bin/bash

# Check if the script received an argument
if [ $# -eq 0 ]; then
    echo "No filename provided. Usage: $0 filename.cpp"
    exit 1
fi

# Get the filename from the argument
FILENAME=$1

# Add the specified content to the existing C++ file or create a new one if it doesn't exist
cat <<EOL > $FILENAME
#include<bits/stdc++.h>
using namespace std;

int main() {

    
    return 0;
}
EOL

# Notify the user
echo "C++ file '$FILENAME' has been modified or created with the specified content."
