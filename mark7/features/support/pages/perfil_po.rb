class PerfilPage
  include Capybara::DSL
  
  def alerta
    find('.panel-body')
  end

  def completa_cadastro(empresa, cargo)
    
    find('#profile-company').set empresa

    combo = find('select[name$=job]')
    #faz uma busca no combo por nome do cargo recebido da documentacao
    combo.find('option', text: cargo).select_option

    click_button 'Salvar'
  end  
end