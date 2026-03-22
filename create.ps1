# This file makes a copy and writes the hash of the file to a text file

# Hit the up arrow to rerun the last command
# Hit the tab key to autocomplete


# Create a folder for our results 
New-Item -ItemType Directory -Force -Path ./RESULTS

# Create a folder for our forensic copy
New-Item -ItemType Directory -Force -Path ./evidence-COPY

# Copy the evidence files to a new folder
Copy-Item ./evidence/evidence1.txt ./evidence-COPY/evidence1.txt
Copy-Item ./evidence/evidence2.txt ./evidence-COPY/evidence2.txt
Copy-Item ./evidence/evidence3.txt ./evidence-COPY/evidence3.txt
Copy-Item ./evidence/evidence4.txt ./evidence-COPY/evidence4.txt
Copy-Item ./evidence/evidence5.txt ./evidence-COPY/evidence5.txt

# Hash all original files
Get-FileHash ./evidence/* -Algorithm SHA256 | Out-File ./RESULTS/original-hashes.txt

# Hash all copied files
Get-FileHash ./evidence-COPY/* -Algorithm SHA256 | Out-File ./RESULTS/copy-hashes.txt