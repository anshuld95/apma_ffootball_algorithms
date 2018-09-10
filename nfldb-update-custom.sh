#psql -U nfldb nfldb -c "INSERT into team values('JAX','Jacksonville', 'Jaguars');"
#psql -U nfldb nfldb -c "INSERT into team values('JAC','Jacksonville', 'Jaguars');"
#psql -U nfldb nfldb -c "INSERT into team values('LAC','Los Angeles', 'Chargers');"
#psql -U nfldb nfldb -c "INSERT into team values('SD','San Diego', 'Chargers');"

nfldb-update

psql -U nfldb nfldb -c "UPDATE drive SET pos_team = 'LAC' WHERE pos_team = 'SD';"
psql -U nfldb nfldb -c "UPDATE game SET home_team = 'LAC' WHERE home_team = 'SD';"
psql -U nfldb nfldb -c "UPDATE game SET away_team = 'LAC' WHERE away_team = 'SD';"
psql -U nfldb nfldb -c "UPDATE player SET team = 'LAC' WHERE team = 'SD';"
psql -U nfldb nfldb -c "UPDATE play_player SET team = 'LAC' WHERE team = 'SD';"

psql -U nfldb nfldb -c "UPDATE drive SET pos_team = 'JAX' WHERE pos_team = 'JAC';"
psql -U nfldb nfldb -c "UPDATE game SET home_team = 'JAX' WHERE home_team = 'JAC';"
psql -U nfldb nfldb -c "UPDATE game SET away_team = 'JAX' WHERE away_team = 'JAC';"
psql -U nfldb nfldb -c "UPDATE player SET team = 'JAX' WHERE team = 'JAC';"
psql -U nfldb nfldb -c "UPDATE play_player SET team = 'JAX' WHERE team = 'JAC';"


psql -U nfldb nfldb -c "UPDATE play SET pos_team = 'JAC' WHERE pos_team = 'JAX';"
psql -U nfldb nfldb -c "UPDATE play SET pos_team = 'LAC' WHERE pos_team = 'SD';"

#psql -U nfldb nfldb -c "DELETE FROM team WHERE team_id = 'JAC';"
#psql -U nfldb nfldb -c "DELETE FROM team WHERE team_id = 'SD';"
