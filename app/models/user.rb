class User < ActiveRecord::Base
  has_many :languages
  validates :first_name, :last_name, :zipcode, :bio, :gender, :email, :password, :presence => true
end
