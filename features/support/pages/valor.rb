class Valor < SitePrism::Page
    
    def escolhe_unico_produto
        all('.product-container')[0].click
        sleep(4)
    end

    def escolhe_produtos
        all('.product-image-container')[0].hover
        click_link('Add to cart')
        find('.continue.btn.btn-default.button.exclusive-medium').click
        all('.product-image-container')[2].hover
        click_link('Add to cart')
        find('.continue.btn.btn-default.button.exclusive-medium').click
        all('.product-image-container')[4].hover
        click_link('Add to cart')
        find('.continue.btn.btn-default.button.exclusive-medium').click
        sleep(3)
    end
        
    def soma_valores_carrinho
        find('.ajax_cart_quantity').hover
        a = find(:xpath, '/html/body/div/div[1]/header/div[3]/div/div/div[3]/div/div/div/div/dl/dt[1]/div/span').text
        a = a.delete("$").to_f
        b = find(:xpath, '/html/body/div/div[1]/header/div[3]/div/div/div[3]/div/div/div/div/dl/dt[2]/div/span').text
        b = b.delete("$").to_f
        c = find(:xpath, '/html/body/div/div[1]/header/div[3]/div/div/div[3]/div/div/div/div/dl/dt[3]/div/span').text
        c = c.delete("$").to_f
        frete = find(:xpath, '/html/body/div/div[1]/header/div[3]/div/div/div[3]/div/div/div/div/div/div[1]/span[1]').text
        frete = frete.delete("$").to_f
        $valor_soma = a + b + c + frete
    end

    def compara_valor_final_prod_home
        valor_final_home = find(:xpath, '/html/body/div/div[1]/header/div[3]/div/div/div[3]/div/div/div/div/div/div[2]/span[1]').text
        valor_final_home = valor_final_home.delete("$").to_f
        expect($valor_soma).to eq(valor_final_home)
    end

    def guarda_valor_unitario
        $valor_prod_un = find('.our_price_display').text
        find(:id, 'add_to_cart').click
        sleep(3)
        find('.btn.btn-default.button.button-medium').click
        sleep(6)
    end

    def compara_valor_final
        valor_final = find('#total_product').text
        expect($valor_prod_un).to eq(valor_final)
    end

end