class AddProductReferenceToVariants < ActiveRecord::Migration[6.1]
  def change
    add_reference :variants, :product, null: false, foreign_key: true
  end
end
