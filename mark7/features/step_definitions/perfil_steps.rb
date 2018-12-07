Dado("que estou autenticado com {string} e {string}") do |email, senha|
  @login_page = LogiPage.new
  @login_page.acessa
  @login_page.logar(email, senha)
end
# clica no link através do nome do link
Dado("acesso o meu perfil") do
  within('aside[class=navigation]') do
    click_link 'Perfil'
  end
end

Quando("completo o meu cadastro") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("devo ver a mensagem de atualização cadastral") do |mensagem|
  pending # Write code here that turns the phrase above into concrete actions
end
