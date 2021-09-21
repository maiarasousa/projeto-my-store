class Carrinho < SitePrism::Page
    include Capybara::DSL
  

    element :imagem_produto, :xpath, "//*[@id='js-product-list']/div[1]/article[1]/div/a/img"
    element :caixa_customizacao, :xpath, "//*[@id='main']/div[1]/div[2]/div[2]/section/div/form/ul/li/textarea"
    element :botao_salvar_customizacao, :xpath, "//*[@id='main']/div[1]/div[2]/div[2]/section/div/form/div/button" 
    element :adicionar_carrinho, :xpath, "//*[@id='add-to-cart-or-refresh']/div[2]/div/div[2]/button"
    element :fazer_checkout, :xpath, "//*[@id='blockcart-modal']/div/div/div[2]/div/div[2]/div/div/a"
    element :confirmar_produto_carrinho , :xpath, "//*[@id='main']/div/div[1]/div/div[2]/ul/li[1]/div/div[2]/div[1]/a"
    element :login, :xpath, "//*[@id='_desktop_user_info']/div/a/span"
    element :email, :xpath, "//*[@id='login-form']/section/div[1]/div[1]/input"
    element :senha, :xpath, "//*[@id='login-form']/section/div[2]/div[1]/div/input"
    element :carrinho_compras, :xpath, "//*[@id='_desktop_cart']/div/div/a/span[1]"
    element :prosseguir_compra, :xpath, "//*[@id='main']/div/div[2]/div[1]/div[2]/div/a"
    element :continuar, :xpath, "//*[@id='login-form']/footer/button"
    element :confirmar_endereco, :xpath, "//*[@id='checkout-addresses-step']/div/div/form/div[2]/button"
    element :metodo_entrega, :xpath, "//*[@id='js-delivery']/button"
    element :pagamento, :xpath, "//*[@id='payment-option-1-container']/label/span"
    element :termos_pagamento, :xpath, "//*[@id='conditions-to-approve']/ul/li/div[2]/label"
    element :confirmar_pagamento, :xpath, "//*[@id='payment-confirmation']/div[1]/button"
    


    def adicionar_produto_um
      imagem_produto.click
      caixa_customizacao.set 'today'
      botao_salvar_customizacao.click
      adicionar_carrinho.click
      fazer_checkout.click
    end

    def confirmar_carrinho
      confirmar_produto_carrinho.visible?
    end

    def adicionar_produto_dois
      imagem_produto.click
      adicionar_carrinho.click
      fazer_checkout.click
    end
  
    def finalizar_pedido
      login.click
      email.set 'cristina789soares@gmail.com'
      senha.set 'pwd123'
      continuar.click
      carrinho_compras.click
      prosseguir_compra.click
      confirmar_endereco.click
      metodo_entrega.click
      pagamento.click
      termos_pagamento.click
      confirmar_pagamento.click
    end
  
  end