with hiring_role as (
	select industry, top_hiring_role, count(*) as totalhiring,
    row_number() over( partition by industry order by count(*) desc)
 as rn from tech_layoffs
 group by industry, top_hiring_role
 )

select industry, top_hiring_role, totalhiring
from hiring_role where rn = 1 