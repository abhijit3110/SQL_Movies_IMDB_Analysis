# QUESTION SET -
# Q 1] Display Top 10 Highest Rated Movie Titles.

select No,Title from (select row_number() over(order by rating desc) as No,title 
from movies order by rating desc) x where x.no<11;

# Q 2] Count movies that have rating at least 8.

select count(*) as movies_count_have_rating_at_least_8 
from movies where rating>=8;


select * from movies where income!='Unknown';

# Q 3] Find The Average Rating For Each Director

select Directors,round(avg(rating),1) as AVG_Rating 
from movies group by directors order by AVG_rating desc;

# Q 4] Display Top 10 Lengthy Movies Title and Runtime

select Title , runtime from movies order by runtime desc limit 0, 10;

# Q 5] Display Number of Movies Per Year

select Year ,count(*) as Total_Movies from movies 
group by year order by Total_movies desc;

# Q 6]  Find Most Popular Movie Title (Highest Revenue)

select Title, Income from movies 
where income!='Unknown' order by income desc limit 1 ;

# Q 7] Display Number of Movies Per Month

select Month ,count(*) as Total_Movies from movies 
group by month order by Total_movies desc;

# Q 8] Display Top 10 Genre By rating

select genre ,round(avg(rating),1) as rating  from movies 
group by genre order by rating desc limit 0,10;


# Q 9] Display Top 10 Country By Rating

select country_of_origin as Country, round(avg(rating),1) as rating 
from movies group by  country_of_origin order by rating desc limit 0,10;

# Q 10] Display Top 10 Filming_Location By Rating

select Filming_Location, round(avg(rating),1) as Rating 
from movies group by Filming_Location order by rating desc limit 0,10;