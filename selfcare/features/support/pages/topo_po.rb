class TopoPage
    include Capybara::DSL
  
    def painel
      find('label[id*=labelLogin]')
    end
    
  end