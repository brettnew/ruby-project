class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.column :first_name, :string
      t.column :last_name, :string
      t.column :zipcode, :integer
      t.column :bio, :text
      t.column :gender, :string
      t.column :email, :string
      t.column :password, :string
      t.column :language_id, :integer

      t.timestamps
    end

    create_table :languages do |t|
      t.column :name, :string
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
