USE don;
GO

select * from dbo.amazon

select * from df

alter table df drop column category

exec sp_help df

select category,sum(discounted_price) as sales from df group by category order by sales desc

select product_id,sum(discounted_price) as sales from df group by product_id order by
sales desc

select product_name, count(product_id) as quantity,category,sum(discounted_price) as sales from df group by product_name 
,category order by quantity desc

select count(product_id) as quantity,sum(discounted_price) as sales from df where discount_percentage > 50 

select count(product_id) as quantity,sum(discounted_price) as sales from df where discount_percentage < 50

select top 8 category,floor(rating) as rating,sum(discounted_price) as sales
from df group by category,floor(rating) order by sales desc

select * from df where category is null

delete from df where rating is null
delete from df where rating_count is null

alter table df alter column discount_percentage int

select floor(discount_percentage) as discount,sum(discounted_price) from df group by floor(discount_percentage)

update df set discount_percentage = TRY_CAST(replace(discount_percentage,'%','') as float)

select category,sum(discounted_price) as sales from df where discount_percentage > 50 group by
category order by sales desc

select category,sum(discounted_price) as sales from df where discount_percentage < 50 group by
category order by sales desc

select round(rating,0) as rating,count(product_id) as quantity,sum(discounted_price) as sales from df
group by round(rating,0) 

select top 10  user_id,sum(discounted_price) as sales from df group by user_id order by sales desc

select sum(discounted_price) as sales from df where discount_percentage > 50 
select sum(discounted_price) as sales from df where discount_percentage < 50 

