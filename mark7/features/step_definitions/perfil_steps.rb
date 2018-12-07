Dado("que estou autenticado com {string} e {string}") do |email, senha|
  visit '/login'
  find('#login_email').set email
  find('input[name=password]').set senha
  find('button[id*=btnLogin]').click 
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
