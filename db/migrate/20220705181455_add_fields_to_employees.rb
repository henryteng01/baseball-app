class AddFieldsToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :job, :string
    add_column :employees, :contact, :string
  end
end
