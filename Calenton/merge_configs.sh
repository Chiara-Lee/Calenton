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

# Debug: Display the content of config.yaml to verify it was generated correctly
echo "Generated config.yaml content:"
cat config.yaml

# Check if config.yaml was created successfully
if [[ ! -s "config.yaml" ]]; then
    echo "Error: config.yaml was not generated or is empty." >&2
    exit 1
fi

# Run Hugo build
echo "Running Hugo build..."
hugo --minify --baseURL $DEPLOY_PRIME_URL

# Clean up config.yaml after build
echo "Cleaning up merged config.yaml..."
rm config.yaml


