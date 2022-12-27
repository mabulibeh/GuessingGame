
echo "Guess how many files are in this directory"


function guess {
local num=$(ls | wc -l)
read input


while [ $input -ne $num ]
	do
	if [ $input -gt $num ]
		then 
			echo "No, try again. You need to go lower"
		else
			echo "No, try again. You need to go higher"
	fi
	read input
done

echo "Congratualations you guessed it. The number of files in this folder is $num"
}

guess
