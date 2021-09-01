create or replace view AdminData as
select aname, salary
from Admin_Log@site_link;


select * from AdminData;

commit;
