class Pesquisar < SitePrism::Page
    include Capybara::DSL

    element :caixa_pesquisa, :xpath, "//*[@id='search_widget']/form/input[2]"
    element :botao_pesquisar, :xpath, "//*[@id='search_widget']/form/button/i"


    def pesquisa_produto(produto)
        caixa_pesquisa.set produto
        botao_pesquisar.click
      end


end
