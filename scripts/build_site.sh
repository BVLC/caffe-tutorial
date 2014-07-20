#!/bin/bash
# Build site for display in web browser.

PORT=${1:-4000}

echo "usage: build.sh [port]"

# Find the site dir, no matter where the script is called
ROOT_DIR="$( cd "$(dirname "$0")"/.. ; pwd -P )"
cd $ROOT_DIR

# Display site using web server.
cd site
jekyll serve -w -s . -d _site --port=$PORT
