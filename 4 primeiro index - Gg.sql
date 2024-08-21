/*Criando Index e definindo que cliente possui muitos telefone*/
alter table `bd_caso_estudo_vendas`.`tb_cli_tel`
add index `fk_cli_tel_idx` (`tel_cli_cod` asc);

/*Adicionando chave estrangeira*/
alter table `bd_caso_estudo_vendas`.`tb_cli_tel`
add constraint `fk_cli_tel`
foreign key (`tel_cli_cod`)
references `bd_caso_estudo_vendas`.`tb_cli`(`cli_cod`)
on delete no action
on update no action;
