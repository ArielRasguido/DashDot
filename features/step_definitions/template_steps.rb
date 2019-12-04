Given /^I open the web app$/ do
  visit '/'
end

Given /^I post to the web app$/ do
  visit '/', :post, "field_name=value"
end

When /^I click on "(.*)"$/ do |text|
  click_link(text)
end

Then /^I should see "(.*)"$/ do |text|
  last_response.body.should =~ /#{text}/m
end

When /^I fill "(.*)" with "(.*)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^I press "(.*)"$/ do |name|
  click_button(name)
end

Then(/^I should see the image "(.*?)"$/) do |image_name|
  last_response.should have_xpath("//img[@src=\"#{image_name}\"]")
end

# Check the content of a specific table cell
# To use this, every cell should have a unique ID like XX:YY (1:3)
Then(/^I should see "(.*?)" at the cell (\d+), (\d+)$/) do |text, x, y|

  cell = "#{x}:#{y}"

  last_response.should have_xpath( "//td[@id=\"#{cell}\"]") do |td|
    td.should contain( text )
  end
end
