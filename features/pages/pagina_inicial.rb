class PaginaInicial < SitePrism::Page
  include Capybara::DSL
  
  set_url 'https://marcelodebittencourt.com/demoprestashop/'
  
end