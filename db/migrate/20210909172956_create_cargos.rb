class CreateCargos < ActiveRecord::Migration[6.1]
  def change
    create_table :cargos do |t|
      t.integer :requested_products
      t.integer :accepted_products

      t.timestamps
    end
  end
end
