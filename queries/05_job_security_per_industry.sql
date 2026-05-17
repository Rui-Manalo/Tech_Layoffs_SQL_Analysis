select industry, round(avg(job_security_score),2) as avgAverageScore
from tech_layoffs
group by industry order by avgAverageScore desc;