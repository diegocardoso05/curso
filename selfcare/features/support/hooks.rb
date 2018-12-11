Before do
    @topo = TopoPage.new
    @toolbar = ToolBar.new
    @login_page = LoginPage.new

  end
  
  Before('@login') do
    @login_page.acessa
    @login_page.logar('admin', 'vivo@1234')
  end
  
  After('@logout') do
    #@nav.sair
  end