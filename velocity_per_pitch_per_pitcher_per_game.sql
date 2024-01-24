SELECT 
  pitcherID,
  gameid,
  pitchtype,
  ROUND(SUM(pitchSpeed) / COUNT(pitchSpeed),2) AS Avg_Game_Velo,
  ROUND(AVG (SUM(pitchSpeed) / COUNT(pitchSpeed)) OVER (PARTITION BY PITCHTYPE),2) AS Avg_MLBSeason_Velo 
FROM bigquery-public-data.baseball.games_wide
WHERE pitcherID IS NOT NULL
GROUP BY 1, 2, 3;