class CreateCareers < ActiveRecord::Migration
  def change
    create_table :careers do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :post

      t.timestamps null: false
    end
  end
end
