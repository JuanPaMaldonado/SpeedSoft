Given(/^Voy al inicio$/) do
  visit '/'
end

When(/^Iniciar el juego$/) do
	click_link("Jugar")
end

When(/^Jugar Posicion (\d+),(\d+)$/) do |arg1, arg2|
	click_link("p#{arg1}#{arg2}")
end

Then(/^Tengo que ver "(.*?)"$/) do |arg1|
	last_response.body.should =~ /#{arg1}/m
end


