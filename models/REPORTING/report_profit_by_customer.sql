SELECT 
    CUSTOMERID
    , SEGMENT
    , COUNTRY
    , SUM(ORDER_PROFIT) AS PROFIT
FROM 
    {{ ref('stg_orders') }}
GROUP BY
    CUSTOMERID
    , SEGMENT
    , COUNTRY