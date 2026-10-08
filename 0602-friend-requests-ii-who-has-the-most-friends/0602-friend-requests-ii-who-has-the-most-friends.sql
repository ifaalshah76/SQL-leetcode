/* Write your T-SQL query statement below */
   WITH cte1 AS
    (SELECT requester_id AS id
    FROM RequestAccepted

    UNION ALL

    SELECT accepter_id AS id
    FROM RequestAccepted),
    cte2 AS
    
(SELECT 
    id,
    COUNT(*) AS num 
    FROM cte1
    GROUP BY id)

    SELECT TOP 1
    id,
    num 
    FROM cte2 
    ORDER BY num DESC