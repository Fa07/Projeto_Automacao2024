#language: pt
#utf-8

@valida_produto
Funcionalidade: Verifica valor do produto
    Eu como cliente da Loja
    Quero escolher alguns produtos
    Para validar seus valores no Carrinho

@valida_valor_carrinho
Cenario: Validar valores no carrinho
    Dado que eu esteja no site de compras
    Quando me direcionar ao carrinho apos escolher o produto desejado
    Entao irei validar os valores inicial e final do produto escolhido

@valida_valores_home
Cenario: Validar valor total na Home
    Dado que eu esteja na home do site de compras
    Quando escolher os produtos desejados
    Entao irei validar os valores totais pela Home do site