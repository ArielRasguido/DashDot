Given("visito la pagina principal") do
    visit'/'
  end
  
  Then("deberia ver un mensaje {string}") do |mensaje|
    last_response.body.should =~ /#{mensaje}/m
  end
  
  When("presiono el boton {string}") do |name|
    click_button(name)
  end
  
  Then("deberia enviarme a la pagina configuraciones") do
    visit '/configurar'
  end
  
  Then("deberia enviarme a la pagina jugar") do
    visit '/jugar'
  end