SELECT
  g.season_name,
  COUNT(g.id) AS game_count,
  SUM(g.all_penalty_count) AS penalty_count,
  SUM(g.all_penalty_count) / COUNT(g.id) AS penalty_per_game,
  SUM(g.changed_penalty_count) AS changed_penalty_count,
  SUM(g.changed_penalty_count) / COUNT(g.id) AS changed_penalty_per_game,
  SUM(g.major_penalty_count) AS major_penalty_count,
  SUM(g.major_penalty_count) / COUNT(g.id) AS major_penalty_per_game,
  SUM(g.minor_penalty_count) AS minor_penalty_count,
  SUM(g.minor_penalty_count) / COUNT(g.id) AS minor_penalty_per_game
FROM
  hs_hockey_penalty_games AS g
GROUP BY
  g.season_name
ORDER BY
  g.season_name
;
