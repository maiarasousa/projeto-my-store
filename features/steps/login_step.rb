Dado('que acesso a pagina de login') do
  @login.pagina_login
end
  
Quando('preencho os dados de login:') do |table|
  @login.login_usuario
end
  
Entao('sou redirecionado para a minha conta') do
  @login.conta_logada

end