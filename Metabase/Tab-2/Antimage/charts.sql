-- Antimage win rate

SELECT
antimage_win,
  COUNT(distinct(match_id)) AS `count`
FROM
  `table`
WHERE
  `table`.`antimage` = 1
GROUP BY
  `antimage_win`

-- Antimage match count

SELECT
  FLOOR((`table`.`antimage` / 0.125)) * 0.125 AS `antimage`,
  COUNT(*) AS `count`
FROM
  `table`
WHERE
  `table`.`antimage` = 1
GROUP BY
  `antimage`
ORDER BY
  `antimage` ASC

-- Antimage matches

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
  `table`.`antimage` = 1
GROUP BY
  `start_time`
ORDER BY
  `start_time` ASC