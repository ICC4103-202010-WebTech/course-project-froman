class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastName
      t.string :username
      t.string :email
      t.text :biography
      t.integer :mainRole
      t.string :location
      t.string :password

      t.timestamps
    end
  end
end
