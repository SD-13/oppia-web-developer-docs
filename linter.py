import os
import re

pattern = re.compile(r'^> \*\*Note\*\*')
exit_code = 0

# Getting all the markdown file names in a formatted pattern(without './')
filenames = [f for f in os.listdir() if f.endswith('.md')]

# Iterating over the markdown files
for filename in filenames:
    # Checking for a the regex pattern in each file
    with open(filename) as file:
        lines = file.readlines()
    for i, line in enumerate(lines):
        if pattern.search(line):
            exit_code = 1
            print(f"{filename}:{i+1}:{line}")

if exit_code == 1:
    print("Lint Check Failed!")
    exit(1)