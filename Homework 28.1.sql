use `hillel-qauto`;
select * 
from user_profiles
where name like "%am"
select * from car_brands;
select * from expenses;
select max(expenses.totalCost) as max_audu_expense
from expenses
join cars on expenses.carId = cars.id
join car_models on cars.carModelId = car_models.id
join car_brands on car_models.carBrandId = car_brands.id
where car_brands.title = "Audi";

select car_models.carBrandId as car_id,
count(*) AS count_models
from car_models
join car_brands on car_models.carBrandId = car_brands.id
where car_brands.title in ("Audi", "BMW")
group by car_models.carBrandId;

select 
car_models.title as car_model,
car_brands.title as car_brand,
count(distinct cars.userId) as user_count from cars
join car_models on cars.carModelId = car_models.id
join car_brands on car_models.carBrandId = car_brands.id
group by car_models.title, car_brands.title
order by user_count desc;

 describe user_profiles;
select distinct user_profiles.name, user_profiles.Lastname
from user_profiles
join users on user_profiles.userId = users.id
join cars on cars.userId = users.id;

