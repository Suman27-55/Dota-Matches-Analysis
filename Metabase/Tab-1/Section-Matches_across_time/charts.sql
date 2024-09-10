-- Start time by day of the week

SELECT
  EXTRACT(
    dayofweek
   
FROM
      `table`.`start_time`
  ) AS `start_time`,
  COUNT(*) AS `count`
FROM
  `table`
GROUP BY
  `start_time`
ORDER BY
  `start_time` ASC

-- Start time by hour of the day

SELECT
  EXTRACT(
    hour
   
FROM
      `table`.`start_time`
  ) AS `start_time`,
  COUNT(*) AS `count`
FROM
  `table`
GROUP BY
  `start_time`
ORDER BY
  `start_time` ASC

-- Start time by month of the year

SELECT
  EXTRACT(
    month
   
FROM
      `table`.`start_time`
  ) AS `start_time`,
  COUNT(*) AS `count`
FROM
  `table`
GROUP BY
  `start_time`
ORDER BY
  `start_time` ASC

-- Start time by quarter of the year

SELECT
  EXTRACT(
    quarter
   
FROM
      `table`.`start_time`
  ) AS `start_time`,
  COUNT(*) AS `count`
FROM
  `table`
GROUP BY
  `start_time`
ORDER BY
  `start_time` ASC