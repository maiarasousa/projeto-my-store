class Submenu < SitePrism::Page
  include Capybara::DSL

  element :entrar_conta,:xpath,"//*[@id='_desktop_user_info']/div/a/span"
  element :criar_conta,:xpath,"//*[@id='content']/div/a"

  def entrar
    entrar_conta.click
    criar_conta.click
  end
    
end