Given("visito la pagina de simulacion") do
   visit '/simulacion'
end
Then("deberia ver un mensaje {string}") do |mensaje|
    last_response.body.should =~ /#{mensaje}/m
end

When("en el campo {string} ingreso {string}") do |campo, valor|
    fill_in(campo, :with => valor)
end
When("presiono el boton {string}") do |buttonName|
    click_button(buttonName)
end
  
Then("deberia ver el mensaje {string}") do |mensaje|
    last_response.body.should =~ /#{mensaje}/m
end

