#!/bin/bash
echo "Building Drobe Backend..."
echo "Python version: $(python --version)"
echo "Installing dependencies..."
pip install -r requirements.txt
echo "Build complete!"
