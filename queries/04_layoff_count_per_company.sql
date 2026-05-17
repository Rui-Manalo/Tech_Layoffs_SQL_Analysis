select company_name, sum(layoffs_count) as total_layoff_count
 from tech_layoffs
group by company_name 
order by total_layoff_count desc;