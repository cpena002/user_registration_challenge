require 'rails_helper'

RSpec.feature "HomePages", type: :feature do
  context 'Going to a website' do
    Steps 'being presented with registration form' do
      Given 'I am on the home page' do
        visit '/'
      end
      And 'I can see a welcome message' do
        expect(page).to have_content("Welcome")
      end
      Then 'I can register' do
        fill_in 'Full Name', with: 'Jessica'
        fill_in 'Street Address', with: '123 Fake St.'
        fill_in 'City', with: 'San Diego'
        fill_in 'State', with: 'California'
        fill_in 'Postal Code', with: '92109'
        fill_in 'Country', with: 'Ireland'
        fill_in 'Email Address', with: 'fake@fake.com'
        fill_in 'User ID', with: 'TooFake'
        fill_in 'Password', with: 'Faker'
      end
      Then 'After registering, I am taken to the Confirmation page' do
        click_button 'Register'
        expect(page).to have_content("Confirmation")
        expect(page).to have_content("TooFake")
      end
      Then 'I can log in' do
        fill_in 'User ID', with: 'TooFake'
        fill_in 'Password', with: 'Faker'
      end
      Then 'if logged-in successfully, I am taken to the log-in page' do
        click_button 'Log In'
        # expect(page).to have_content("Jessica")
        # expect(page).to have_content("123 Fake St.")
        # expect(page).to have_content("San Diego")
        # expect(page).to have_content("California")
        # expect(page).to have_content("92109")
        # expect(page).to have_content("Ireland")
        # expect(page).to have_content("fake@fake.com")
        expect(page).to have_content("TooFake")
      end
    end
  end
end # end feature
