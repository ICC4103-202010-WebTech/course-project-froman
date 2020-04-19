class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.references :event
      t.references :invitation
      t.string :options
      t.integer :vote

      t.timestamps
    end
  end
end
