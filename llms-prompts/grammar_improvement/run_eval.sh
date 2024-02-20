#!/usr/bin/env bash

source ./.env
export OPENAI_API_KEY

# Check if a number is passed as the first parameter
if [ -z "$1" ]; then
    echo "Error: No number provided as the first parameter."
    exit 1
fi

# Check if localhost:15500 is already in use
if ! netstat -tuln | grep ":15500" > /dev/null; then
    # If not, start the view command
    npx promptfoo@0.40.0 view &
fi

# Execute the eval command
echo "Running use_case_$1.yaml"
npx promptfoo@0.40.0 eval --no-cache -c "use_case_$1.yaml"
