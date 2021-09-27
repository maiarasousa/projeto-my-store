Dado('acesso meus enderecos') do
  @novo_endereco.meus_enderecos
end
  
Quando('cadastro um novo endereço') do
  @novo_endereco.criar_novo_enderco
end
  
Então('o endereco e salvo com sucesso') do
  @novo_endereco.endereco_cadastrado
end