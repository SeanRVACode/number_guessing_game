#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

NAME_ENTRY() {
  RANDOM_NUMBER=$((1+RANDOM%1000))
  echo "Enter your username:"
  read GET_USERNAME

  GET_USERNAME=$(echo "$GET_USERNAME" | tr -d '[:space:]')  # Remove leading/trailing whitespace

  DB_USERNAME=$($PSQL "SELECT username FROM users WHERE username = '$GET_USERNAME';")
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE username = '$GET_USERNAME';")
  BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE username = '$GET_USERNAME';")

  if [[ -z $DB_USERNAME ]]; then
    $PSQL "INSERT INTO users(username) VALUES('$GET_USERNAME');" >/dev/null  # Ignore output
    echo -e "\nWelcome, $GET_USERNAME! It looks like this is your first time here."
  else
    echo "Welcome back, $DB_USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  fi

  GUESS_COUNT=0
  echo "Guess the secret number between 1 and 1000:"

  while true; do
    read GUESS
    ((GUESS_COUNT++))

    if ! [[ $GUESS =~ ^[0-9]+$ ]]; then
      echo "That is not an integer, guess again:"
      GUESS_COUNT=$((GUESS_COUNT-1))
      continue
    elif (( $GUESS < $RANDOM_NUMBER )); then
      echo "It's higher than that, guess again:"
    elif (( $GUESS > $RANDOM_NUMBER )); then
      echo "It's lower than that, guess again:"
    else
      NUMBER_OF_GUESSES=$GUESS_COUNT
      SECRET_NUMBER=$RANDOM_NUMBER
      GET_GUESS=$($PSQL "SELECT best_game FROM users WHERE username = '$GET_USERNAME';")
      GET_GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE username = '$GET_USERNAME';")

      $PSQL "UPDATE users SET games_played = $GAMES_PLAYED+1 WHERE username = '$GET_USERNAME';" >/dev/null
      if (( $GET_GUESS > $NUMBER_OF_GUESSES || $GET_GUESS == 0 )); then
        $PSQL "UPDATE users SET best_game = $NUMBER_OF_GUESSES WHERE username = '$GET_USERNAME';" >/dev/null
      fi

      echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
      exit
    fi
  done
}

NAME_ENTRY
