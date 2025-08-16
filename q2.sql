use  Lab2;
delimiter //

create procedure GetWatchHistoryBySubscriber(in sub_id  int)
begin
    select 
        sh.title as watched_show,
        wh.watchtime as duration_minutes,
        sb.subscribername as watched_by
    from watchhistory as wh
         inner join shows as sh on wh.showid = sh.showid
         inner join subscribers as sb on wh.subscriberid = sb.subscriberid
    where wh.subscriberid = sub_id 
    order by wh.watchtime desc;  -- prioritize higher watch durations
end //

delimiter ;
call GetWatchHistoryBySubscriber(1);
call GetWatchHistoryBySubscriber(2);


