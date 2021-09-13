#language:pt

@compra_produtos_diferentes
Funcionalidade: Compra de produtos diferentes
  Sendo um usuario
  Quero realizar a compra de produtos diferentes

  Contexto: Estar na página inicial
    * que acesso a pagina inicial

  @maiara_sousa
  Esquema do Cenario: Realizar compra de produtos diferentes
    Dado que faço uma pesquisa do primeiro "<produto_um>"
    E escolho o primeiro item da lista de resultados
    Quando confirmo a adicao do "<produto_um>" para o carrinho
    E escolho outro "<produto_dois>" para o carrinho
    Então finalizo minha compra com sucesso

    Exemplos:
      | produto_um | produto_dois |
      | mug        | cushion      |

