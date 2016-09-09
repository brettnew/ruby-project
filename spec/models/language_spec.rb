require 'rails_helper'

describe Language do
  it { should have_many :users }
  it { should validate_presence_of :name }
end
