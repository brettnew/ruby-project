FactoryGirl.define do
  factory(:user) do
    first_name('Bob')
    last_name('Jones')
    zipcode('12345')
    bio('I like stuff.')
    gender('male')
    email('bob@email.com')
    password('password')
    password_confirmation('password')
    avatar{File.new('#{Rails.root}/spec/support/fixtures/image.jpg')}
    language
  end

  factory(:language) do
    name('Arabic')
    user
  end
end
