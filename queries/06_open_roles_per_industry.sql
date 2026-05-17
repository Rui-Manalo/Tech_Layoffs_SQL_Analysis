select industry, sum(open_roles) as total_open_roles
from tech_layoffs
group by industry order by total_open_roles desc