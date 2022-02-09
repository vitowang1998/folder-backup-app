
   
#!/bin/bash


# Create a copy for all files in current directory every 10 minutes

count=1

while true; do
    fileCount=0
    echo "DO NOT CLOSE THE WINDOW, BACKUP No.${count} IN PROGRESS"
    say "Do not close the window, backup number ${count} in progress."

    dirName=$(date +"%Y-%m-%d_%H-%M-%S")
    curTime=$(date)

    mkdir ~/Backup/ProjectName/${dirName}

    # Print log
    echo "Loginfo: currently running backup No.${count}."

    for name in *; do
        if [ "${name}" != "backup_script.sh" ]; then
	    cp ${name} ~/Backup/ProjectName/${dirName}
            fileCount=$((fileCount+1))
	fi
    done    
   

    # Print log
    touch ~/Backup/ProjectName/${dirName}/log.txt
    echo -e "
Loginfo: Backup No.${count}
Backup time: ${curTime}
Number of files: ${fileCount}
    " > ~/Backup/ProjectName/${dirName}/log.txt

    say "Backup number ${count} completed"
    say "Current time is $(date)"

    count=$((count+1)) #update the counter

    sleep 600
done 
