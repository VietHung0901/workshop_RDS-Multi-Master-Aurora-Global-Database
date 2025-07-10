#!/bin/bash

# Build script for Aurora Global Database Workshop
echo "Building Aurora Global Database Workshop..."

# Check if Hugo is installed
if ! command -v hugo &> /dev/null; then
    echo "Hugo is not installed. Please install Hugo first."
    echo "Visit: https://gohugo.io/getting-started/installing/"
    exit 1
fi

# Clean previous build
echo "Cleaning previous build..."
rm -rf public/

# Build the site
echo "Building the site..."
hugo --minify

# Check if build was successful
if [ $? -eq 0 ]; then
    echo "✅ Build successful!"
    echo "📁 Generated files are in the 'public' directory"
    echo ""
    echo "To serve locally, run:"
    echo "  hugo server -D"
    echo ""
    echo "To serve with specific language:"
    echo "  hugo server -D --config config.toml"
else
    echo "❌ Build failed!"
    exit 1
fi
