with PitcherTable as (
  select distinct 
    pitcherID,
    pitcherfirstname,
    pitcherlastname,
    pitcherthrowhand
  from bigquery-public-data.baseball.games_wide 
),

PitchTable as (
  select distinct
    pitchtype,
    pitchtypedescription
  from bigquery-public-data.baseball.games_wide
)