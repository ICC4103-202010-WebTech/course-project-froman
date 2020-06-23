class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer :transmitter
      t.references :user
      t.string :content
      t.datetime :date

      t.timestamps
    end
  end
end
