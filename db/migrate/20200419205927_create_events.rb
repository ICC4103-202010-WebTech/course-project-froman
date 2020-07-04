class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.references :creator, polymorphic: true
      t.string :name
      t.text :description
      t.datetime :date
      t.integer :privacy
      t.string :location
      t.datetime :creation_date

      t.timestamps
    end
  end
end
