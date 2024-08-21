/*Criando Index e definindo que a compra é registrada para um funcionario*/
alter table `bd_caso_estudo_vendas`.`tb_compra`
add index `fk_compra_func_idx` (`compra_func_cod` asc);
/*Adicionando chave estrangeira a tabela compra*/
alter table `bd_caso_estudo_vendas`.`tb_compra`
add constraint `fk_compra_func_cod`
foreign key (`compra_func_cod`)
references `bd_caso_estudo_vendas`.`tb_func`(`func_cod`)
on delete no action
on update no action;
