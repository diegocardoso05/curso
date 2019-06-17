# REGEX ou exressão regular
# Contem => *
# termina com => $
# começa com => ^

Before do
  @nav = Navbar.new
  @side = Sidebar.new
  @login_page = LoginPage.new
  @tarefas_page = TarefasPage.new
  @perfil_page = PerfilPage.new
  @usuarios_page = UsuariosPage.new
  #define a resolução minima que tela vai iniciar o teste
  page.current_window.resize_to(1440, 900)
end

Before('@login') do
  @usuario = { email: 'diegocardoso05@gmail.com', senha: '123456' }

  @login_page.acessa
  @login_page.logar(@usuario[:email], @usuario[:senha])
end

After('@logout') do
  @nav.sair
end

After do |scenario|
  nome = scenario.name.gsub(/[^A-Za-z0-9 ]/,  '')
  nome = nome.tr(' ', '_').downcase!
  shot = "log/screenshots/#{nome}.png"

  page.save_screenshot(shot)
  embed(shot, 'image/png', 'Ta aqui o print')
end

#Capybara.default_max_wait_time = 5