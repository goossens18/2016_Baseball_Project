with pitchcounts as (

  select pitcherId, gameid, pitchtype,  sum(pitchSpeed) as sumofvelocity, count(pitchspeed) as countofvelocity
  from bigquery-public-data.baseball.games_wide
  where pitcherID is not null
  group by 1,2,3

)

select pitcherID, gameid, pitchtype,sumofvelocity/countofvelocity as averagevelocity
from pitchcounts