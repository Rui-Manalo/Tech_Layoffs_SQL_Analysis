select company_name,
		sum(layoffs_count) as total_layoff_count,
		sum(open_roles) as total_open_roles,
		sum(layoffs_count) - sum(open_roles) as difference
from tech_layoffs
group by company_name
order by total_layoff_count desc,
		 total_open_roles desc,
         difference asc;