#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
echo "Enter your username:"
NUMBER=$(( RANDOM % 1000 + 1 ))
read USERNAME
USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$USERNAME';")
if [[ -z $USER_ID ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(name) VALUES('$USERNAME');")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$USERNAME';")
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = $USER_ID;")
  BEST_GAME=$($PSQL "SELECT MIN(attempts) FROM games WHERE user_id = $USER_ID;")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo "Guess the secret number between 1 and 1000:"
read NUMBER_OF_GUESS
COUNTER=1
until [ $NUMBER_OF_GUESS = $NUMBER ]
do
  if [[ ! $NUMBER_OF_GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  elif [[ $NUMBER_OF_GUESS < $NUMBER ]]; then
    echo "It's lower than that, guess again:"
  elif [[ $NUMBER_OF_GUESS > $NUMBER ]]; then
  # else
    echo "It's higher than that, guess again:"
  fi
  COUNTER=$(( $COUNTER + 1 ))
  read NUMBER_OF_GUESS
done

echo "You guessed it in $COUNTER tries. The secret number was $NUMBER. Nice job!"
INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, attempts) VALUES($USER_ID, $COUNTER);")
