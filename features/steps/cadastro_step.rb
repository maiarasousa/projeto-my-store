Dado('que acesso o submenu entrar') do
  @submenu.entrar
end
  
Quando('preencho o formulario de cadastro:') do |table|
  @formulario.formulario_cadastro
end
  
Entao('finalizo o meu cadastro') do
  @formulario.salvar_cadastro
end