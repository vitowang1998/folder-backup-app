# Folder Backup App
Running `script.sh` will backup all other files placed in the same directory with `script.sh`. In each subsequent 10 minutes, the program will backup the files again.

# Voice Usage
This software uses "say" command to generate verbal information. The first reason of this design is for accessibility concerns. The second reason is that if the backup program runs in the background, it is a good way for the program to notify the users about the progress of backup verbally, which strengthens their control about the backup process. This can be removed by changing the source code.
