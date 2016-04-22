Given(/^Voy al inicio$/) do
  visit '/'
end

Given(/^Voy a jugar$/) do
  visit '/jugar'
end

When(/^Iniciar el juego$/) do
	click_link("Jugar")
end

When(/^Volver a jugar$/) do
	click_link("Juego nuevo")
end

When(/^Jugar Posicion (\d+),(\d+)$/) do |arg1, arg2|
	@xx = arg1
	@yy = arg2
	click_link('<img src="../imgB.jpg" alt="p' + "#{arg1}#{arg2}" + '" height="80" width="80">')
end

Then(/^Tengo que ver "(.*?)"$/) do |arg1|
	last_response.body.should =~ /#{arg1}/m
end

Then(/^Tiene que aparecer en la posicion (\d+),(\d+) una "(.*?)"$/) do |arg1, arg2, arg3|
	arg1 = "'../img" + "#{arg3}" + ".jpg' alt='p" + "#{arg1}#{arg2}" + "'"
	last_response.body.should =~ /#{arg1}/m
end



