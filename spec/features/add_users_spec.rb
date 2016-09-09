require 'rails_helper'

describe 'the add a user process' do
  it 'adds a new user' do
    visit users_path
    click_link 'here'
    fill_in 'First name', :with => 'John'
    fill_in 'Last name', :with => 'Doe'
    fill_in 'Zipcode', :with => 'John'
    fill_in 'Bio', :with => 'I like learning!'
    choose('user_gender_male')
    fill_in 'Email', :with => 'john@email.com'
    fill_in 'Photo', :with => 'http://www.clipartbest.com/cliparts/9Tz/o94/9Tzo94nec.png'
    fill_in 'Password', :with => 'password'
    click_on 'Submit'
    expect(page).to have_content 'John'
  end

  it 'does error flash when not all fields are entered' do
    visit users_path
    click_link 'here'
    click_on 'Submit'
    expect(page).to have_content 'Oops'
  end
end
