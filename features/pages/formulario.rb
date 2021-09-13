class Formulario < SitePrism::Page
  include Capybara::DSL

  element :titulo_social, :xpath, "//*[@id='customer-form']/section/div[1]/div[1]/label[2]/span"
  element :nome, :xpath, "//*[@id='customer-form']/section/div[2]/div[1]/input"
  element :sobrenome, :xpath, "//*[@id='customer-form']/section/div[3]/div[1]/input"
  element :email, :xpath, "//*[@id='customer-form']/section/div[4]/div[1]/input"
  element :senha, :xpath, "//*[@id='customer-form']/section/div[5]/div[1]/div/input" 
  element :nascimento, :xpath, "//*[@id='customer-form']/section/div[6]/div[1]/input"
  element :termos, :xpath, "//*[@id='customer-form']/section/div[9]/div[1]/span/label"
  element :finalizar_cadastro, :xpath, "//*[@id='customer-form']/footer/button"

  def formulario_cadastro
    titulo_social.click
    nome.set 'Cristina'
    sobrenome.set 'Soares'
    email.set Faker::Internet.free_email
    senha.set 'pwd123'
    nascimento.set '10/05/1979'
    termos.click
  end

  def salvar_cadastro
    finalizar_cadastro.click
  end

end