# scripts
A collection of quick scripts

## gen-templ.sh
Generates a daily entry based on a templated text file. Currently it supports creating daily journals and notes based on the following template files:
- dailynote.txt
- journal.txt

### Usage
1. Create a templates directory within the script directory
2. Create template txt files (being sure to grant permissions)
3. Update filepath to existing directories for each template.
4. Run script by passing the 'name', which is equal to <name>.txt
Define a templates directory in the scripts directory (added to `.gitignore'). This holds text files for all templates. Currently, this script supports
- dailynote.txt
- journal.txt
