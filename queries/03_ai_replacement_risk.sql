select industry,
 round(avg(ai_replacement_risk), 2) as avg_replacement_risk
 from tech_layoffs
group by industry order by avg_replacement_risk desc