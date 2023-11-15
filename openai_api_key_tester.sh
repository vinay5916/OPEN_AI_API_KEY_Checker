#!/bin/bash

# Check if the input file is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <api_keys_file>"
    exit 1
fi

# Input file containing API keys (one key per line)
api_keys_file="$1"

# Check if the file exists
if [ ! -f "$api_keys_file" ]; then
    echo "Error: File '$api_keys_file' not found."
    exit 1
fi

# OpenAI completions URL
url="https://api.openai.com/v1/engines/davinci/completions"

while IFS= read -r api_key; do
    response=$(curl -s -X POST "$url" -H "Content-Type: application/json" -H "Authorization: Bearer $api_key" -d '{"prompt": "Hello, world!", "max_tokens": 5}')

    if echo "$response" | grep -q -e '"invalid_api_key"' -e "Incorrect API key provided"; then
        echo "API key is not working $api_key"
    else
        if echo "$response" | grep -q -e '"id"' -e '"total_tokens"'; then
            echo "Success for API key $api_key: This API key is Active."
        else
            if echo "$response" | grep -q 'Invalid Content-Type header'; then
                echo "Content-Type header issue for API key $api_key. Pass -H 'Content-Type: application/json'."
            else
                echo "Response for API key $api_key:"
                echo "$response"
                echo "---"
            fi
        fi
    fi
done < "$api_keys_file"
