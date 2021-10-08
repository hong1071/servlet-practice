desc guestbook;

-- insert 
insert into guestbook values(null, '홍창목', '1', 'hihi', now());

-- select 
select no, name, date_format(reg_date, '%Y %m %d %H:%i:%s'), message
from guestbook
order by reg_date desc;

-- delete
delete
from guestbook
where no = 1
	and password = '1'
;