--use Skeleton.Sample
--go

if object_id('DF_Config_modifiedDate') is not null
	alter table config.Config
		drop constraint DF_Config_modifiedDate
go

if object_id('UC_Config') is not null
	alter table config.Config 
		drop constraint UC_Config
go

alter table config.Config
	add constraint DF_Config_modifiedDate default (getdate()) for modified_date
go

alter table config.Config
	add constraint UC_Config unique (config_key)
go