create user 'aji'@'localhost';
create user 'prasetyo'@'%';

set password for 'aji'@'localhost' = 'root';
set password for 'prasetyo'@'%' = 'root';

grant select on belajar_sql.* to 'aji'@'localhost';
grant select, insert, update, delete on belajar_sql.* to 'prasetyo'@'%';

show grants for 'aji'@'localhost';
show grants for 'prasetyo'@'%';

revoke select on belajar_sql.* from 'aji'@'localhost';
revoke select, insert, update, delete on belajar_sql.* from 'prasetyo'@'%';

drop user 'aji'@'localhost';
drop user 'prasetyo'@'%';
