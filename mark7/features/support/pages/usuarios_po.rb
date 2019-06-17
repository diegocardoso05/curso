class UsuariosPage
  include Capybara::DSL

  def acesso_registra
    visit '/register'
end

def acessar_cadastro 
    find('a[href*=register]').click
end

def cadastrar_usuario(nome, email, senha)
    find('#register_name').set nome
    find('#register_email').set email
    find('#register_password').set senha
    click_button 'Cadastrar'
end

def mensagem_ola
    find('.m-b-none')
end

def mensagem_alerta
    find('div[class*=message]')
end
end
