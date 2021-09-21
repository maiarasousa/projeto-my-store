Dado('que faço uma pesquisa do primeiro {string}') do |produto_um|
    @pesquisar.pesquisa_produto(produto_um)
  end
  
  Dado('escolho o primeiro item da lista de resultados') do
    @carrinho.adicionar_produto_um
  end
  
  Quando('confirmo a adicao do {string} para o carrinho') do |string|
    @carrinho.confirmar_carrinho
  end
  
  Quando('escolho outro {string} para o carrinho') do |produto_dois|
    @pesquisar.pesquisa_produto(produto_dois)
    @carrinho.adicionar_produto_dois
  end
  
  Então('finalizo minha compra com sucesso') do
    @carrinho.finalizar_pedido
  end
