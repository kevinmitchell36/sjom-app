class DropDeviseModels < ActiveRecord::Migration[5.0]
  def change
    drop_table :securities
    drop_table :case_managers
    drop_table :residential_aids
  end
end
