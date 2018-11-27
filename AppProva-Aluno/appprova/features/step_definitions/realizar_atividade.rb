Quando("eu registro novo usuário no Sistema, e finalizo uma atividade.") do
    
    app.load
#   Descomentar, para criar acc.
#   app.criarAcc
#   app.load

    app.logIn
    sleep(3)
    app.editarPerfil
    sleep(3)
    app.simulado
    first('.btn.btn-action.btn-play-simulated').click
    find('#btn_start_mock').click  
    sleep(2)
    first('.alternative').hover.click
    find('.btn.question-btn-right.action-btn').click
    first('.alternative').hover.click
    find('.btn.question-btn-right.action-btn').click
    first('.alternative').hover.click
    find('.btn.question-btn-right.action-btn').click
    first('.alternative').hover.click
    find('.btn.question-btn-right.action-btn').click
    first('.alternative').hover.click
    find('.btn.question-btn-right.action-btn').click
    find('.btn.btn-simulated-finished.action-btn.question-btn-left').click
    sleep(10)

end
  
Entao("eu valido se à atividade foi finalizada com sucesso.") do
    
    @verificador = find('div[class="titles"]')
    expect(@verificador.text).to eql 'Seu Desempenho'
    
end