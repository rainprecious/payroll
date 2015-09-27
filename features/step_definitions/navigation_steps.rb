Given(/^I'm logged in$/) do
  @user = create :user
  visit new_user_session_path
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: 'password'
  click_on 'Log in'
end

Given(/^I'm on the experience chart page$/) do
  visit experience_path
end

When(/^I'm on the salary history chart page$/) do
  visit root_path
end

When(/^I'm on that employee page$/) do
  visit employee_path(@employee)
end
