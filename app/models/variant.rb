class Variant < ApplicationRecord
    validates :price, :numericality => { :greater_than => 0 }

    belongs_to :product
end
