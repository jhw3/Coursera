


function num_files {
read -p "Guess how many files are in the current directory:  " guess
count=$(ls -1 | wc -l)
if [[ $guess -eq $count ]]
then
  echo "Congrats! You got it!"
fi
}

num_files

while [[ $guess -ne $count ]]
  do
    if [[ $guess -gt $count ]]
    then
      echo "$guess is just a tad bit high, try again!"

    elif [[ $guess -lt $count ]]
    then
      echo "$guess is just a bit too low, try again!"
    fi
num_files
done
