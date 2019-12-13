Given("Ingreso a la pagina de configuracion") do
    visit '/configuracion'
end
  
Given("En el campo {string} ingreso {string}") do |campo, valor|
    fill_in(campo, :with => valor)
end

When("presiono el boton {string}") do |name|
    click_button(name)
end

Then("deberia ver {string}") do |mensaje|
    last_response.body.should =~ /#{mensaje}/m
end

When("Vuelvo a la pagina de configuracion") do
    visit '/configuracion'
end