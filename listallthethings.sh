
#iterate through all of the directories
for i in {0..100..1}
do

    #iterate through all of the argumeents
    for j in "$@"
    do
	#check if file exists in directory
	if [ -f "$j" ];
	then
	    ls -i $j
#	    ls -l $j
#	    echo "File is in directory"
#	else
#	    echo "File is not in directory"
	    #switch directory to previous directory
	fi
    done
    #move to previous directory
    cd ..
done
