Dado('que faço uma pesquisa do primeiro {string}') do |produto_um|
    @produtos.pesquisa_produto(produto_um)
  end
  
  Dado('escolho o primeiro item da lista de resultados') do
    @produtos.adicionar_produto_um
  end
  
  Quando('confirmo a adicao do {string} para o carrinho') do |string|
    @produtos.confirmar_carrinho
  end
  
  Quando('escolho outro {string} para o carrinho') do |produto_dois|
    @produtos.pesquisa_produto(produto_dois)
    @produtos.adicionar_produto_dois
  end
  
  Então('finalizo minha compra com sucesso') do
    @produtos.finalizar_pedido
  end
