require 'rails_helper'

describe 'the edit a user process' do
  it 'edits a user' do
    user = FactoryGirl.create(:user)
    click_on 'Edit Profile'
    fill_in 'First name', :with => 'Jack'
    fill_in 'Current password', :with => 'password'
    click_button 'Update'
    expect(page).to have_content 'Jack'
  end
end
