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
  #define a resolução minima que tela vai iniciar o teste
  page.current_window.resize_to(1440, 900)
end

Before('@login') do
  @login_page.acessa
  @login_page.logar('diegocardoso05@gmail.com', '123456')
end

After('@logout') do
  @nav.sair
end

#Capybara.default_max_wait_time = 5