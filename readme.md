# 水雨情数据同步作业配置

默认情况下同步三张表：

1. st_pptn_r;

2. sr_river_r

3. st_rsvr_r

   同时，需要有ST_STBPRP_B站点信息表，即可实现两个库之前这三张表的数据同步。

   ## 一、配置步骤

   1. 打开作业工程后边界，source和target数据库连接信息，并测试是否连接成功；

      ![数据库连接设置](/screenshot/sqlConnect.png)

   2. 在作业页面右键设置作业参数，设置启动时候前推时间以及当天项目行政区划编码。

      ![作业参数设置](/screenshot/params.png)

   3. 创建etl表，通过在目标库中，执行下边语句，同步一天前的数据默认：

      ` create table etl_temp (id int primary key,time_stamp datetime,time_stamp_river datetime,time_stamp_rsvr datetime)
      	  INSERT INTO etl_temp (id,time_stamp,time_stamp_river, time_stamp_rsvr) VALUES (1, 
      			DATEADD(DD ,-1, getdate()),
      			DATEADD(DD ,-1, getdate()) ,
      			DATEADD(DD ,-1, getdate())  
      			)`