CREATE SCHEMA IF NOT EXISTS `Viacao_Unifil` DEFAULT CHARACTER SET utf8;

CREATE TABLE `Clientes` (
    `id_cliente` INT NOT NULL AUTO_INCREMENT, 
    `nome` VARCHAR(255) NULL, 
    `email` VARCHAR(255) UNIQUE NOT NULL, 
    `telefone` VARCHAR(45),
    `cpf` UNIQUE VARCHAR(45)
    PRIMARY KEY (`id_cliente`)
    UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC)
);

CREATE TABLE `Rotas` (
    `id_rota` INT PRIMARY KEY,
    `cidade_origem` VARCHAR(255) UNIQUE NOT NULL,
    `cidade_destino` VARCHAR(255) UNIQUE NOT NULL,
    `dt_saida` DATETIME NULL,
    `dt_chegada` DATETIME NULL,
)
--A origem e o destino não podem ser iguais

CREATE TABLE `Assentos` (

)

CREATE TABLE `Onibus` (
    `id_onibus` INT PRIMARY KEY, 
    `total_de_assentos` INT NOT NULL, 
    `tipo_de_assentos` VARCHAR(255) NOT NULL,
);
--Deve herdar o tipo de assentos da tabela assento


CREATE TABLE `Passagem` (

)

CREATE TABLE `Compra` (

)
--Deve herdar os dados de rota
--Deve conter