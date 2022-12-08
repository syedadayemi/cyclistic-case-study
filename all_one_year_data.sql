SELECT *
FROM (
  SELECT *
  FROM `cyclisticcase.12monthdata.APR2022`
  UNION DISTINCT
  SELECT *
  FROM `cyclisticcase.12monthdata.AUG2022-1`
  UNION DISTINCT
  SELECT *
  FROM `cyclisticcase.12monthdata.AUG2022-2`
  UNION DISTINCT
  SELECT *
  FROM `cyclisticcase.12monthdata.DEC2021`
  UNION DISTINCT
  SELECT *
  FROM `cyclisticcase.12monthdata.FEB2022`
  UNION DISTINCT
  SELECT *
  FROM `cyclisticcase.12monthdata.JAN2022`
  UNION DISTINCT
  SELECT *
  FROM `cyclisticcase.12monthdata.JUL2022-1`
  UNION DISTINCT
  SELECT *
  FROM `cyclisticcase.12monthdata.JUL2022-2`
  UNION DISTINCT
  SELECT *
  FROM `cyclisticcase.12monthdata.JUN2022-1`
  UNION DISTINCT
  SELECT *
  FROM `cyclisticcase.12monthdata.JUN2022-2`
  UNION DISTINCT
  SELECT *
  FROM `cyclisticcase.12monthdata.MAR2022`
  UNION DISTINCT
  SELECT *
  FROM `cyclisticcase.12monthdata.MAY2022-1`
  UNION DISTINCT
  SELECT *
  FROM `cyclisticcase.12monthdata.MAY2022-2`
  UNION DISTINCT
  SELECT *
  FROM `cyclisticcase.12monthdata.NOV2021`
  UNION DISTINCT
  SELECT *
  FROM `cyclisticcase.12monthdata.OCT2022`
  UNION DISTINCT
  SELECT *
  FROM `cyclisticcase.12monthdata.SEP2022-1`
  UNION DISTINCT
  SELECT *
  FROM `cyclisticcase.12monthdata.SEP2022-2`
) AS combined;

SELECT row_number() over(ORDER BY started_at ASC) rownum, ride_id, rideable_type, member_casual, started_at, ended_at, ride_length,
CASE day_of_week
  WHEN 1 THEN "Sunday"
  WHEN 2 THEN "Monday"
  WHEN 3 THEN "Tuesday"
  WHEN 4 THEN "Wednesday"
  WHEN 5 THEN "Thursday"
  WHEN 6 THEN "Friday"
  ELSE "Saturday"
END AS weekday
FROM `cyclisticcase.12monthdata.combined`
WHERE ride_id IS NOT NULL
ORDER BY rownum;

SELECT row_number() over(ORDER BY started_at ASC) rownum, ride_id, member_casual, start_station_name, end_station_name, concat(start_station_name," - ",end_station_name) AS start_end_name, start_lat, start_lng, end_lat, end_lng,
CASE
  WHEN start_station_name = end_station_name THEN "same"
  ELSE "different"
END AS same_different,
FROM `cyclisticcase.12monthdata.combined`
WHERE ride_id IS NOT NULL
ORDER BY rownum;
