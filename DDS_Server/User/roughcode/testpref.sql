set serveroutput on;

declare
		readnumber integer:=0;
		maxread integer:=0;
		id integer ;
	
begin
for r in (select section_id,max(Read_Section) as MaximumRead
	from (select section_id ,count(section_id) as Read_Section
	from News@site_link
	inner join User_Read_Record@site_link
	on News.nid@site_link=User_Read_Record.nid@site_link
	where userid=useridserver
	group by section_id)
	group by section_id) loop
dbms_output.put_line(r.section_id);
/*	readnumber:=r.MaximumRead;
	
	if(readnumber>maxread) then
	maxread:=readnumber;
	id:=r.section_id;
	
end if;	*/
end loop;



end;
/