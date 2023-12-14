/*
Author: Kwenziwa Lizwi Khanyile
Date: CURDATE()
Task: script that ranks country origins of bands,
ordered by the number of (non-unique) fans
*/
SELECT
    origin,
    COUNT(DISTINCT fan_id) AS nb_fans
FROM
    metal_bands
GROUP BY
    origin
ORDER BY
    nb_fans DESC, origin;
