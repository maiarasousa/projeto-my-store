class  NovoEndereco< SitePrism::Page
  include Capybara::DSL

  element :enderecos, :xpath, "//*[@id='addresses-link']/span/i"
  element :novo_endereco, :xpath, "//*[@id='content']/div[3]/a/span"
  element :caixa_texto_para_novo_endereco, :xpath, "//*[@id='content']/div/div/form/section/div[5]/div[1]/input"
  element :cidade, :xpath, "//*[@id='content']/div/div/form/section/div[7]/div[1]/input"
  element :estado, :xpath, "//*[@id='content']/div/div/form/section/div[8]/div[1]/select"
  element :seleciona_estado, :xpath, "//*[@id='content']/div/div/form/section/div[8]/div[1]/select/option[9]"
  element :cep, :xpath, "//*[@id='content']/div/div/form/section/div[9]/div[1]/input"
  element :salvar, :xpath, "//*[@id='content']/div/div/form/footer/button"


    def meus_enderecos
      enderecos.click
    end

    def criar_novo_enderco
      novo_endereco.click
    end

    def endereco_cadastrado
      caixa_texto_para_novo_endereco.click.set Faker::Address.state
      cidade.click.set Faker::Address.city
      estado.click
      seleciona_estado.select_option
      cep.set Faker::Address.zip_code
      salvar.click
    end

end
