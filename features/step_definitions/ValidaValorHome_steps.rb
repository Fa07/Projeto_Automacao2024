Dado('que eu esteja na home do site de compras') do
    Home.new.url
end

Quando('escolher os produtos desejados') do
    Valor.new.escolhe_produtos
end

Entao('irei validar os valores totais pela Home do site') do
    Valor.new.soma_valores_carrinho
    Valor.new.compara_valor_final_prod_home
end