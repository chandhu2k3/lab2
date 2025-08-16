use Lab2;

drop procedure AddSubscriberIfNotExists ;
delimiter //

create procedure AddSubscriberIfNotExists(in subName VARCHAR(200))
begin
    declare cnt int default 0;
    declare next_id int;
    select count(*) into cnt
    from subscribers
    where subscribername = subName;
    if cnt = 0 then
        select coalesce(max(subscriberid), 0) + 1 into next_id
        from subscribers;

        insert into subscribers (subscriberid, subscribername, subscriptiondate)
        values (next_id, subName , curdate());
        
        select concat('subscriber "', subName, '" added successfully with id: ', next_id) as result;
    else
        select concat('subscriber "',subName, '" already exists!') as result;
    end if;

end //

delimiter ;

call AddSubscriberIfNotExists('chandrakanth');      
call AddSubscriberIfNotExists('emily clark');   
 
