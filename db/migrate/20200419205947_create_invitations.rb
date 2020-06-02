class CreateInvitations < ActiveRecord::Migration[6.0]
  def change
    create_table :invitations do |t|
      t.references :event
      t.references :user
      t.integer :host

      t.timestamps
    end
  end
end
