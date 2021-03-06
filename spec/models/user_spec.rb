require 'rails_helper'

describe User do
  it { should have_and_belong_to_many :languages }
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :zipcode }
  it { should validate_presence_of :bio }
  it { should validate_presence_of :gender }
  it { should validate_presence_of :email }
  it { should validate_presence_of :password }
end
