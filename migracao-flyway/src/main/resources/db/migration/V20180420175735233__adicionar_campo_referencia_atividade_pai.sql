delimiter $$

drop procedure if exists adicionar_campo_referencia_atividade_pai $$

create procedure adicionar_campo_referencia_atividade_pai()

begin
	if not exists ((select * 
					from information_schema.columns
					where table_schema=database()
						and table_name='atividade'
						and column_name='atividade_pai')) then
							
		ALTER TABLE atividade ADD atividade_pai BIGINT;
	end if;
end $$

call adicionar_campo_referencia_atividade_pai() $$

drop procedure if exists adicionar_campo_referencia_atividade_pai $$

delimiter ;