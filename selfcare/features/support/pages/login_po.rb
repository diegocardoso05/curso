class LoginPage
    include Capybara::DSL
    def acessa
      visit '/login.jsf'
    end
    def alerta
      find('label[id*=labelLogin]')
    end
    def logar(usuario, senha)
        find('input[type=text]').set usuario
        find('input[type=password]').set senha
        find('input[type=submit]').click
    end 
  end