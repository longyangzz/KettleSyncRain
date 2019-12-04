if not exists(select null from sysobjects where xtype='u' 
                and name ='etl_temp'
             )
    begin
      /*½¨±ísql½Å±¾*/
      create table etl_temp 
      (
        id int primary key,time_stamp datetime 
       );
	   INSERT INTO etl_temp (id,time_stamp) VALUES (1,'2019-05-22 00:00:00');
    end