use lab2;
delimiter //

create procedure LoopSubscribersWithWatchHistory()
begin
    declare flag int default false;
    declare sub_id int;
    
    declare sub_cursor cursor for 
        select subscriberid from subscribers;
    
    declare continue handler for not found set flag = true;
    
    open sub_cursor;
    
    read_loop: loop
        fetch sub_cursor into sub_id;
        
        if flag then
            leave read_loop;
        end if;
        
        call GetWatchHistoryBySubscriber(sub_id);
        
    end loop;
    
    close sub_cursor;
    
end //

delimiter ;

call LoopSubscribersWithWatchHistory();
