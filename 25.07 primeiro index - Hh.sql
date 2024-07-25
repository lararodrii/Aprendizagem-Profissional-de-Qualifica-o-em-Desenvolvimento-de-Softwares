/*Criando Index e definindo que as compras possuem muitos produtos*/
alter table `bd_caso_estudo_vendas`.`tb_prod_comp`
add index `fk_prod_comp_compra_idx` (`compra_cod` asc);


alter table `bd_caso_estudo_vendas`.`tb_prod_comp`
add index `fk_prod_comp_cod_idx` (`prod_cod`);

/*Adicionando chave estrangeira*/
alter table `bd_caso_estudo_vendas`.`tb_prod_comp`
add constraint `fk_prod_comp_compra`
foreign key(`compra_cod`)
references `bd_caso_estudo_vendas`.`tb_compra`(`compra_cod`)
on delete no action
on update no action;


alter table `bd_caso_estudo_vendas`.`tb_prod_comp`
add constraint `fk_prod_comp_prod`
foreign key(`prod_cod`)
references `bd_caso_estudo_vendas`.`tb_prod`(`prod_cod`)
on delete no action
on update no action;