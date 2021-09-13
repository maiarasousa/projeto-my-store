class Login < SitePrism::Page
    include Capybara::DSL

    element :fazer_login, :xpath, "//*[@id='_desktop_user_info']/div/a/span"
    element :email, :xpath, "//*[@id='login-form']/section/div[1]/div[1]/input"
    element :senha, :xpath, "//*[@id='login-form']/section/div[2]/div[1]/div/input"
    element :entrar, "[id='submit-login']"
    element :conta_logada, :xpath, "//*[@id='main']/header/h1"

    def pagina_login
        fazer_login.click
    end

    def login_usuario
        email.set 'cristina789soares@gmail.com'
        senha.set 'pwd123'
        entrar.click
    end

    def conta_usuario
        conta_logada.visible?
    end

end

