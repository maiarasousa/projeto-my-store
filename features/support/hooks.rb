Before do
    @pagina_inicial = PaginaInicial.new
    @submenu = Submenu.new
    @formulario = Formulario.new
    @carrinho = Carrinho.new
    @login = Login.new
    @pesquisar = Pesquisar.new
    @novo_endereco = NovoEndereco.new
end

After do |scenario| 
    name = scenario.name
    temp_shot = page.save_screenshot("allure-results/evidences/#{name}/temp_screenshot.png")
    
    Allure.add_attachment(
      name: name,
      type: Allure::ContentType::PNG, 
      source: File.open(temp_shot)
    )
  end
  