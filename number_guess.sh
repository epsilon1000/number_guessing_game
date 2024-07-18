#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"


#---Login section
echo -e "Enter your username:"
read USER_INPUT


USER_ID=$(echo $($PSQL "SELECT user_id FROM usuario WHERE username='$USER_INPUT';") | sed 's/ //g')
if [[ -z $USER_ID ]]
then
  echo "Welcome, $USER_INPUT! It looks like this is your first time here."
  INSERT_USER=$($PSQL "INSERT INTO usuario(username) VALUES('$USER_INPUT')")
  USER_ID=$(echo $($PSQL "SELECT user_id FROM usuario WHERE username='$USER_INPUT';") | sed 's/ //g')
else
  USERNAME=$(echo $($PSQL "SELECT username FROM usuario WHERE user_id=$USER_ID;") | sed 's/ //g')
  GAMES_PLAYED=$(echo $($PSQL "SELECT COUNT(game_id) FROM game WHERE user_id=$USER_ID;") | sed 's/ //g')
  BEST_GAME=$(echo $($PSQL "SELECT MIN(score) FROM game WHERE user_id=$USER_ID;") | sed 's/ //g')
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses. "
fi

#---Game section
echo -e "\nGuess the secret number between 1 and 1000:"

#Generate a random number from 1 to 1000
random_number=$((1 + RANDOM % 1000))
#Number of attempts counter
COUNT=1
ADIVINO=0
while [[ $ADIVINO == 0 ]]
do
  read GUESS
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  else
    if [[ $GUESS -eq $random_number ]]
    then
      echo "You guessed it in $COUNT tries. The secret number was $random_number. Nice job!"
      ADIVINO=1
      break
    elif [[ $GUESS -lt $random_number ]]
    then
      echo "It's higher than that, guess again:"
    else
      echo "It's lower than that, guess again:"
    fi
    COUNT=$((COUNT+1))
  fi
done
INSERT_GAME=$($PSQL "INSERT INTO game(user_id, score) VALUES($USER_ID,$COUNT);") 
