class CreateOrganizationRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :organization_roles do |t|
      t.references :organization
      t.references :user
      t.integer :role

      t.timestamps
    end
  end
end
