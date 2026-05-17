WITH layoffs_reason AS (
    SELECT industry,
           reason_for_layoffs,
           COUNT(*) AS total_layoffs,
           ROW_NUMBER() OVER (
               PARTITION BY industry
               ORDER BY COUNT(*) DESC
           ) AS rn
    FROM tech_layoffs
    GROUP BY industry, reason_for_layoffs
)

SELECT industry,
       reason_for_layoffs,
       total_layoffs
FROM layoffs_reason
WHERE rn = 1;