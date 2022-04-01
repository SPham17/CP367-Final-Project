#always clear output.txt everytime it is run
> output.txt

#iterate through all of the directories
for i in {0..100..1}
do

    #iterate through all of the argumeents
    for j in "$@"
    do
	#check if file exists in directory
	#does the longlist first
	if [ -f "$j" ];
	then
	    ls -l $j
      	    echo "$(ls -l $j)" >> /home/pham8020/pham8020_a6/pham8020_q1/output.txt

#	    echo "File is in directory"
#	else
#	    echo "File is not in directory"
	    #switch directory to previous directory
	fi

    done 
 
    for k in "$@"
    do
        #check if file exists in directory
	#does the indoe list after the longlist
        if [ -f "$k" ];
        then
            ls -i $k

	    echo "$(ls -i $k)" >> /home/pham8020/pham8020_a6/pham8020_q1/output.txt
 


#           echo "File is in directory"
#       else
#           echo "File is not in directory"
            #switch directory to previous directory
        fi
    done 



    #move to previous directory
    cd ..
done
