Given("visito la pagina principal") do
    visit'/'
  end
  
  Then("deberia ver un mensaje {string}") do |mensaje|
    last_response.body.should =~ /#{mensaje}/m
  end
  
  Then("deberia enviarme a la pagina de configuracion") do
    visit '/configuracion'
  end
  
  Then("deberia enviarme a la pagina de simulacion") do
    visit '/simulacion'
  end