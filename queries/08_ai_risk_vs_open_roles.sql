select industry,
		round(avg(ai_replacement_risk),2) as avgReplacementRisk,
        sum(open_roles) as totalOpenRoles
from tech_layoffs
group by industry
order by totalOpenRoles desc;
        