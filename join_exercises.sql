use join_example_db;

select *
from users
join roles on users.role_id = roles.id;

select *
from users
left join roles on users.role_id = roles.id;

select *
from users
right join roles on users.role_id = roles.id;


