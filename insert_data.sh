#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

echo $($PSQL "TRUNCATE teams, games")

# Do not change code above this line. Use the PSQL variable above to query your database.
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS; do
 # remove the first line of the csv file to get the values andnot the titles of the table
  if [[ $YEAR != "year" ]]
  # insert the teams from the winners and opponet columns
  then
    TEAM_ID_WINNER=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
    if [[ -z $TEAM_ID_WINNER ]]
    then
      INSERT_THE_WINNERS=$($PSQL "INSERT INTO teams(name) VALUES ('$WINNER');")
      if [[ $INSERT_THE_WINNERS == "INSERT 0 1" ]]
      then
        echo "Inserted into teams, $WINNER"
      fi
    fi

    TEAM_ID_OPPONENT=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")
      if [[ -z $TEAM_ID_OPPONENT ]]
      then 
        INSERT_THE_OPPONENTS=$($PSQL "INSERT INTO teams(name) VALUES ('$OPPONENT');")
        if [[ $INSERT_THE_OPPONENTS = "INSERT 0 1" ]]
        then 
          echo "Inserted into teams, $OPPONENT"
        fi
      fi


    # insert the games
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")
      INSERT_GAMES=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES($YEAR,'$ROUND',$WINNER_ID,$OPPONENT_ID,$WINNER_GOALS,$OPPONENT_GOALS);")
        if [[ $INSERT_GAMES = 'INSERT 0 1' ]]
        then
        echo "Inserted into games, $YEAR,'$ROUND',$WINNER_ID,$OPPONENT_ID,$WINNER_GOALS,$OPPONENT_GOALS"
        fi

  fi
done
