Given(/^I am on the adding info page$/) do
  visit new_ride_path
end

When(/^I fill in my info with name "(.*?)" and "(.*?)"$/) do |name, option|
  fill_in 'Name', with: name
  select option, from: "ride_status"
  fill_in 'ride_origin', with: 'Bethlehem'
  fill_in 'ride_contact_info', with: '123-456-789'
end

When(/^I click "(.*?)"$/) do |save_button|
  click_on save_button
end

Then(/^I should see "(.*?)" on the index page$/) do |name|
  expect(page).to have_content(name)
end

Then(/^there should be a match$/) do
  expect(page).to have_content('Matches')
end