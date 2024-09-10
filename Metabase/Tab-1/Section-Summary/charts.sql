-- Total matches final
SELECT
  COUNT(*) AS `count`
FROM
  `table`

-- Matches in the last 30 days

SELECT
  COUNT(*) AS `count`
FROM
  `table`
WHERE
  (
    `table`.`start_time` >= TIMESTAMP_TRUNC(
      TIMESTAMP_ADD(CURRENT_TIMESTAMP(), INTERVAL -30 day),
      day
    )
  )
 
   AND (
    `table`.`start_time` < TIMESTAMP_TRUNC(CURRENT_TIMESTAMP(), day)
  )