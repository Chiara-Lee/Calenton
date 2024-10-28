#!/bin/bash

# Combine YAML files into one config.yaml
echo "Merging configuration files..."

# Initialize an empty config.yaml
echo "" > config.yaml

# Append each YAML file to config.yaml
for file in author.yaml markup.yaml menu.yaml params.yaml related.yaml; do
    if [[ -f "$file" ]]; then
        echo "---" >> config.yaml  # Add YAML document separator for each file
        cat "$file" >> config.yaml
        echo "Merged $file"
    else
        echo "Warning: $file not found."
    fi
done

echo "Configuration files merged."

# Run Hugo build
echo "Running Hugo build..."
hugo --minify --baseURL $DEPLOY_PRIME_URL

# Remove the combined config.yaml after build
echo "Cleaning up merged config.yaml..."
rm config.yaml
