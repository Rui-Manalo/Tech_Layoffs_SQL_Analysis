SELECT industry,
    round(avg(ai_replacement_risk), 2) as aireplace,
sum(layoffs_count)as laycount,
count(open_roles) as totalopen
FROM tech_layoffs
GROUP BY industry
order by aireplace asc,
		laycount asc,
		totalopen desc;


