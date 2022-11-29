--use Skeleton.Sample
--go 

if object_id('config.Config', 'U') is not null
	drop table config.Config

create table config.Config
(
	config_id int not null identity(1,1),
	config_key nvarchar(20) not null,
	config_value nvarchar (max) not null,
	modified_date datetime not null,
		
	constraint PK_Config primary key (config_id)	
)
go