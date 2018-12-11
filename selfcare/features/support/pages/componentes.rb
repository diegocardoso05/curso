class ToolBar
    include Capybara::DSL
    def acessa_simulador
        within('table[class=toolBar]') do
            click_link 'SIMULADOR'
    end
end