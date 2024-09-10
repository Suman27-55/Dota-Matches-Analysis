-- Axe win rate

SELECT
axe_win,
  COUNT(distinct(match_id)) AS `count`
FROM
  `table`
WHERE
  `table`.`axe` = 1
GROUP BY
  `axe_win`

-- Axe match count

SELECT
  FLOOR((`table`.`axe` / 0.125)) * 0.125 AS `axe`,
  COUNT(*) AS `count`
FROM
  `table`
WHERE
  `table`.`axe` = 1
GROUP BY
  `axe`
ORDER BY
  `axe` ASC

-- Axe matches

SELECT
  EXTRACT(
    month
   
FROM
      `table`.`start_time`
  ) AS `start_time`,
  COUNT(*) AS `count`
FROM
  `table`
WHERE
  `table`.`axe` = 1
GROUP BY
  `start_time`
ORDER BY
  `start_time` ASC