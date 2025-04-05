#!/bin/bash

# Update and install necessary packages
pkg update -y && pkg upgrade -y
pkg install python -y
pkg install git -y

# Clone the repository
cd $HOME
rm -rf TanvirCyberTool
git clone https://github.com/Tanvir-CyberBoy/TanvirCyberTool.git
cd TanvirCyberTool

# Install Python dependencies (if any)
pip install -r requirements.txt

# Give execute permission
chmod +x tanvircybertool.py

# Run the tool
echo "Installation complete! Run the tool using:"
echo "python3 tanvircybertool.py"
