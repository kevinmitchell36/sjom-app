class ChangeRole < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :role, :integer, using: 'role::integer'
  end
end
