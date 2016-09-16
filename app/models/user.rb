class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_attached_file :image, :styles => { :medium => '300x300>', :thumb => '100x100#'}, :default_url => '/images/:style/missing.png'
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\z/

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :languages
  validates :first_name, :last_name, :zipcode, :bio, :gender, :email, :password, :presence => true
end
