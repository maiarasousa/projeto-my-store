#language:pt

@realizar_login
Funcionalidade: Realizar login
  Sendo um usuario cadastrado
  Quero realizar o login

  Contexto: Estar na página inicial
    * que acesso a pagina inicial

  @maiara_sousa
  @fazer_login
  Cenario: Login
    Dado que acesso a pagina de login
    Quando preencho os dados de login:
      | email                       | senha  |
      | cristina789soares@gmail.com | pwd123 |
    Entao sou redirecionado para a minha conta