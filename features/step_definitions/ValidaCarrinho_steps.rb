Dado('que eu esteja no site de compras') do
    Home.new.url
end

Quando('me direcionar ao carrinho apos escolher o produto desejado') do
    Valor.new.escolhe_unico_produto
    Valor.new.guarda_valor_unitario
end

Entao('irei validar os valores inicial e final do produto escolhido') do
    Valor.new.compara_valor_final
end