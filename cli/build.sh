#!/bin/bash
set -e

# Load environment variables
if [ -f .env ]; then
    export $(cat .env | xargs)
fi

echo "Building product-kit..."

# Copy data files temporarily
echo "Copying data files..."
mkdir -p src/product_kit/data
cp -r ../agents src/product_kit/data/
cp -r ../prompts src/product_kit/data/
cp -r ../.ai-providers src/product_kit/data/
cp -r ../context src/product_kit/data/
cp -r ../inventory src/product_kit/data/
cp -r ../templates src/product_kit/data/
cp ../constitution.md src/product_kit/data/

# Clean previous builds
echo "Cleaning previous builds..."
rm -rf dist/ build/ *.egg-info src/*.egg-info
find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true

# Build
echo "Building package..."
uv build --wheel

# Cleanup data directory
echo "Cleaning up temporary data..."
rm -rf src/product_kit/data

echo "Build complete! Package is in dist/"

# Optionally publish if --publish flag is passed
if [ "$1" = "--publish" ]; then
    if [ -z "$UV_PUBLISH_TOKEN" ]; then
        echo "Error: UV_PUBLISH_TOKEN not set in .env"
        exit 1
    fi
    echo "Publishing to PyPI..."
    uv publish --token "$UV_PUBLISH_TOKEN"
    echo "Published successfully!"
fi
