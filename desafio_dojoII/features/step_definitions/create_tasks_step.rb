Dado("que estou logado no site suiteCRM") do
    @logar_no_site = LoginPage.new
    @logar_no_site.load
    @logar_no_site.efetuar_login
    
end
  
  Quando("cadastrar uma nova tarefa {string}, {string}") do |string, string2|
    @acesso_pagina_de_cadastro = HomePage.new
    @acesso_pagina_de_cadastro.page_create

    @criar_tarefa = CreateTasks.new
    #binding.pry
    @criar_tarefa.page_create(string, string2)

    @validacao1 = string
    @validacao2 = string2
    
end
  
  Entao("valido que foi cadastrado com sucesso") do
    expect(@criar_tarefa.subject_upcase.text).to have_content @validacao1.upcase
    expect(@criar_tarefa.subject_field.text).to have_content @validacao1
    expect(@criar_tarefa.status_field.text).to have_content @validacao2
end