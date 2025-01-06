# Inefficient Memory Management in Bash Script

This repository demonstrates a common but easily overlooked error in shell scripting: inefficient memory handling when dealing with large files.  The `bug.sh` script reads an entire file into memory at once, leading to potential memory exhaustion. The `bugSolution.sh` script shows the improved, memory-efficient approach using `while` loop and line-by-line processing.

## How to reproduce
1. Create a large file (e.g., `largefile.txt`) using a tool like `head /dev/urandom | tr -dc A-Za-z0-9\n | head -n 1000000 > largefile.txt`.
2. Replace `/path/to/your/largefile.txt` in `bug.sh` with the path to your file.
3. Run `bug.sh`.  On systems with limited memory, this will likely fail or become very slow.
4. Run `bugSolution.sh`.  This will process the file efficiently, regardless of size.
