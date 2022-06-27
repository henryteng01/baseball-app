class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.text :biography
      t.string :profile_pic_url

      t.timestamps
    end
  end
end
