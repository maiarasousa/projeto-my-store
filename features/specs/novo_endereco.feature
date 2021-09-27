#language:pt

@endereco
Funcionalidade: Novo endereço
  Sendo um usuário cadastrado
  Quero adicionar um novo endereço

  Contexto: Estar na página inicial
    * que acesso a pagina inicial

  @maiara_sousa
  @novo_endereco
  Cenario: Criar novo endereço
    Dado que acesso a pagina de login
    E preencho os dados de login:
      | email                       | senha  |
      | cristina789soares@gmail.com | pwd123 |
    E acesso meus enderecos
    Quando cadastro um novo endereço
    Então o endereco e salvo com sucesso




