----Mudança de Carteira dos Processos do Órgão Devedor "Município de Campinas" para Carteira da Fransciny

----Munipalidade de Campinas - 27

----Prefeitura Municipal de Campinas -51	

----Fransciny Oliveira Silva  - 157

----fiz o teste nos processos 1015003-05.2015.8.26.0114 e 0034826-39.2013.8.26.0053 onde os dois tem finais diferente e são de campinas



----select para pegar os ids dos processos da carteira 157(fransciny)
--select *
--from [dbo].[tb_Processo_Requerente]
--inner join [dbo].[tb_Processo] on [dbo].[tb_Processo].id_Processo = [dbo].[tb_Processo_Requerente].id_Processo
--where id_Usuario_Compras = 157 and id_Orgao_Devedor in (27,51)

----select para testar os ids se estão certos)
--select * from tb_Processo
--where id_Processo in (3532, 9035, 9172, 10245, 8969, 12337, 12473, 21486, 8972)

update 
	[dbo].[tb_Processo_Requerente]
set 
	 id_Usuario_Compras = 157
--select id_Processo 
--from [dbo].[tb_Processo_Requerente]
where 
	id_Processo in 
	(
		select 
			id_Processo
		from 
			[dbo].[tb_Processo]
		where 
			id_Orgao_Devedor in (27,51)
			and [dbo].[tb_Processo].fl_Ativo = 1 and [dbo].[tb_Processo].id_Status_Processo = 1 and [dbo].[tb_Processo].id_Fase_Processo = 4 and f.ProcessoSindicato(id_Processo) = 0 
	) and [dbo].[tb_Processo_Requerente].[fl_Ativo] = 1 and [dbo].[tb_Processo_Requerente].[id_Status_Requerente] = 1  and [dbo].[tb_Processo_Requerente].id_Fase_Processo_Requerente = 4  and f.ReuerenteAdvogadoSucumbencia(id_Processo_Requerente) = 0 
