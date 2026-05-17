select company_name,
round(avg(ai_replacement_risk),2) as avgReplacementRisk,
sum(layoffs_count) as totalLayoff
from tech_layoffs
group by company_name
order by avgReplacementRisk desc;