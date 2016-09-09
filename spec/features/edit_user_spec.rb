require 'rails_helper'

describe 'the edit a user process' do
  it 'edits a user' do
    user = User.create(:first_name => 'John', :last_name => 'Doe', :zipcode => 12345, :bio => 'I like learning!', :gender => 'male', :email => 'john@email.com', :photo => 'http://www.clipartbest.com/cliparts/9Tz/o94/9Tzo94nec.png', :password => 'password')
    visit user_path(user)
    click_on 'Edit Profile'
    fill_in 'First name', :with => 'Bob'
    click_on 'Submit'
    expect(page).to have_content 'Bob'
  end
end
